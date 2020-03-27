<script>
	import numeral from 'numeral';

	let time = 0.0;
	let interval;
	let startTime;

	function start() {
		if (interval != null) {
			stop();
		} else {
			if (!startTime) startTime = Date.now();
			interval = setInterval(() => {
				time = (Date.now() - startTime)
			}, 10)
		}
	}

	function stop() {
		clearInterval(interval)
		interval = undefined
	}

	function reset() {
		stop();
		time = 0.0;
		startTime = null;
	}
</script>

<main>
	<h1>{numeral(Math.floor(time/(60.0 * 1000))).format('00') + ':' + numeral(Math.floor(time/1000) % 60).format('00') + ':' + numeral(Math.floor(time / 10) % 100).format('00')}</h1>
	<button on:click={start}>{ interval == null ? 'Start' :'Stop'}</button>
	<button on:click={reset}>Reset</button>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		font-family: monospace;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	button {
		width: 100px
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>