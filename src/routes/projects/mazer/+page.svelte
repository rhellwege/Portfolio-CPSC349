<script>
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Mazer</title>
</svelte:head>

<div id="main" class="text-lg mx-auto">
    <h1 id="title" class="font-bold text-7xl text-center py-5">MAZER</h1>
    <section>
        <h2 class="font-bold text-lg mb-2">Overview</h2>
        <p>
            This project was for the final project of my Datastructures and
            Algorithms course taught at Saddleback by professor Ahmed. The
            purpose was to create a maze solver and generator to apply
            pathfinding algorithms. I ended up making the program a CLI because
            it didn't have much interactivity, but it had many options which
            also makes it easier to run on any machine. My favorite feature is
            that it can generate gifs of a step by step solve or generation
            using any of the methods. You can see the source code and compile it
            yourself at <a
                href="https://github.com/rhellwege/Mazer"
                class="link">https://github.com/rhellwege/Mazer</a
            >
        </p>
        <div class="divider"></div>
    </section>
    <section>
        <h2 class="font-bold text-lg mb-5">Maze Generation</h2>
        <div class="px-3 flex flex-col md:flex-row justify-between">
            <img
                src="/project-media/gen(prims).gif"
                alt="Maze Generation using Prim's algorithm"
                class="gif"
            />
            <div class="divider divider-vertical"></div>
            <p>To Generate maze images</p>
        </div>
        <div class="divider"></div>
    </section>
    <section>
        <h2 class="font-bold text-lg mb-5">Maze Solving</h2>
        <div class="px-3 flex flex-col md:flex-row justify-between">
            <p>To solve maze images</p>
            <div class="divider divider-vertical"></div>
            <img
                src="/project-media/solve(BFS).gif"
                alt="Maze solving using breadth-first search"
                class="gif"
            />
        </div>
        <div class="divider"></div>
    </section>
</div>

<style>
    @font-face {
        font-family: "PerfectDark";
        src: url("/fonts/pdark.ttf");
        font-weight: normal;
        font-style: normal;
        font-weight: 400;
    }
    #title {
        font-family: "PerfectDark";
    }
    #main {
        width: 80vw;
    }
    .gif {
        width: 400px;
        height: auto;
    }
</style>
