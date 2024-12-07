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
        {
            title: "AI Waste Recognition",
            summary:
                "A self-trained image classification model that classifies images as recyclable or waste. Has an interactive interface for live training and inference.",
            preview: "/project-previews/aiwasterecognition.png",
            link: "/projects/aiwasterecognition",
            tags: ["Python", "AI", "Interactive", "Web"],
            github: "https://github.com/rhellwege/AiWasteRecognition",
        },
        {
            title: "TalkWithBooks",
            summary:
                "A personalized RAG for retrieveing documents and answering questiong (WIP)",
            preview: "/project-previews/twb.png",
            link: "/projects/talkwithbooks",
            tags: ["Python", "AI", "Interactive", "Web", "WIP"],
            github: "https://github.com/rhellwege/TalkWithBooks",
        },
    ];
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Projects</title>
</svelte:head>

<h1 class="text-5xl text-bold">Projects</h1>

<ul class="flex flex-row flex-wrap justify-center align-text-bottom gap-9">
    {#each projects as project}
        <li class="">
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
