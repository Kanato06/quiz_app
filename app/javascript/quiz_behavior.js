document.addEventListener('turbo:load', function() {
    let totalScore = 0;
    let totalQuestions = document.querySelectorAll('.question').length;
    let answeredQuestions = 0;

    document.querySelectorAll('.choice').forEach(function(choiceButton) {
        choiceButton.addEventListener('click', function() {
            // 他の選択肢のスタイルをリセット
            this.closest('.question').querySelectorAll('.choice').forEach(function(choice) {
                choice.classList.remove('selected');
                choice.disabled = true; // 選択肢を選んだ後、他の選択肢を無効にする
            });

            // 選択した選択肢にスタイルを適用
            this.classList.add('selected');

            // 正解かどうかの判定
            const correct = this.dataset.correct === 'true';
            if (correct) {
                totalScore++;
            }

            // 結果を表示
            const resultElement = this.parentElement.querySelector('.result');
            resultElement.innerHTML = correct ? '<span class="correct">〇 正解！</span>' : '<span class="incorrect">× 不正解！</span>';
            resultElement.style.display = 'block';

            // 回答済みの質問数を更新
            answeredQuestions++;

            // すべての問題が終わったらスコアを送信
            if (answeredQuestions === totalQuestions) {
                sendScore(totalScore);
            }
        });
    });

    function sendScore(score) {
        fetch('/questions/save_score', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
            },
            body: JSON.stringify({ score: score })
        }).then(response => {
            if (response.ok) {
                alert(`あなたのスコアは ${score} 点です！`);
                // ここでスコア表示のための処理を追加
            } else {
                alert('スコアの保存に失敗しました');
            }
        });
    }
});
