<script>
    import Card from "$lib/components/card/Card.svelte";

    let projects = [
        {
            title: "Mazer",
            summary:
                "A CLI program that generates and solves mazes. It can also generate GIFs of each generation and solve",
            preview: "/project-previews/mazer.png",
            link: "/projects/mazer",
            tags: ["C++", "Path Finding", "CLI"],
            github: "https://github.com/rhellwege/Mazer",
        },
        {
            title: "Synnim",
            summary:
                "A CPU based synthesizer written from scratch in the nim programming language. Features include custom patches and keyboard controls",
            preview: "/project-previews/synnim.png",
            link: "/projects/synnim",
            tags: ["Nim", "Synth", "GUI", "Music"],
            github: "https://github.com/rhellwege/Synnim",
        },
    ];
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Projects</title>
</svelte:head>

<h1 class="text-5xl text-bold">Projects</h1>

<!-- <Card
    title="hello"
    summary="this is a summary"
    preview="https://img.daisyui.com/images/stock/photo-1635805737707-575885ab0820.webp"
    tags={["spiderman"]}
    link="/projects/talkwithbooks"
/> -->

<ul>
    {#each projects as project}
        <li>
            <Card
                title={project.title}
                summary={project.summary}
                preview={project.preview}
                link={project.link}
                tags={project.tags}
                github={project.github}
            />
        </li>
    {/each}
</ul>

<style>
</style>
