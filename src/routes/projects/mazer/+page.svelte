<script>
    import BrowserDemo from "$lib/components/browserdemo/BrowserDemo.svelte";
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Mazer</title>
</svelte:head>

<div id="main" class="text-lg mx-auto min-h-screen">
    <h1 id="title" class="font-bold text-7xl text-center pt-5">MAZER</h1>
    <div class="divider"></div>
    <div class="flex flex-col">
        <section>
            <BrowserDemo
                title="Mazer Browser Demo"
                link="/project-media/mazer-wasm/index.html"
                width={800}
                height={800}
                >Try generating a maze by pressing the Generate button in the
                top left pane, the the Solve button to solve the maze.</BrowserDemo
            >

            <div class="divider"></div>
        </section>
        <section>
            <h2 class="font-bold text-lg mb-2">Overview</h2>
            <p>
                Originally, this project was for the final project of my
                Datastructures and Algorithms course taught at Saddleback by
                professor Ahmed. The purpose was to create a maze solver and
                generator to apply pathfinding algorithms. I ended up making the
                program a CLI because it didn't have much interactivity, but it
                had many options which also makes it easier to run on any
                machine. My favorite feature is that it can generate gifs of a
                step by step solve or generation using any of the methods. You
                can see the source code and compile it yourself at <a
                    href="https://github.com/rhellwege/Mazer"
                    class="link">https://github.com/rhellwege/Mazer</a
                >
            </p>
            <div class="divider"></div>
        </section>
        <section>
            <h2 class="font-bold text-lg mb-2">GUI Mode</h2>
            <p>
                After my Datastructures class ended, I was till interested in
                the project so I decided to create a new branch of the project
                so I could experiment with GUIs to make the program interactive.
                I ended up choosing ImGui because it had the fewest dependencies
                and works well with C++. After a while of developing this I had
                the idea to create a Ray Caster so you could walk around the
                maze in first person like DOOM. This part is unfinished but it
                the ray casting code already works. To make it more accessible,
                I ended up making the program compatible with web assembly so
                you can play with it in the browser demo. Unfortunately, I had
                to strip the animation functionality because before it relied on
                multiple threads being run. You can find this branch at <a
                    href="https://github.com/rhellwege/Mazer/tree/imgui"
                    class="link"
                    >https://github.com/rhellwege/Mazer/tree/imgui</a
                >
            </p>
            <div class="divider"></div>
        </section>
        <section>
            <h2 class="font-bold text-lg mb-5">Maze Generation</h2>
            <div class="px-3 flex flex-col md:flex-row justify-between gap-28">
                <img
                    src="/project-media/gen(prims).gif"
                    alt="Maze Generation using Prim's algorithm"
                    class="gif"
                />
                <div class="divider divider-vertical"></div>
                <p>
                    Both the CLI and GUI versions of the program support three
                    different methods of generating mazes. DFS which is the
                    traditional way, Prim's which is similar to Breadthfirst
                    search and spreads from a seed, and Kruskal which is a
                    recursive generator that creates a fractal like structure.
                    You can create mazes of any size if there is enough memory,
                    and in the CLI you can generate gifs of the process.
                </p>
            </div>
            <div class="divider"></div>
        </section>
        <section>
            <h2 class="font-bold text-lg mb-5">Maze Solving</h2>
            <div class="px-3 flex flex-col md:flex-row justify-between gap-28">
                <p>
                    Once you choose a method to generate the maze, you can solve
                    the maze using 4 different methods. DFS or depth first
                    search which is equivalent to the method of always holding
                    your left hand to a wall until you find the exit. BFS or
                    breadth first search which spreads the search area one by
                    one. Then there is Dijkstra's which is a shortest path
                    algorithm which isn't best suited for this type of maze
                    because there is only one solution. A* Is the best method
                    because it uses a distance heuristic and is lazy.
                </p>
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
        width: 70vw;
    }
    .gif {
        width: auto;
        height: 300px;
    }
</style>
