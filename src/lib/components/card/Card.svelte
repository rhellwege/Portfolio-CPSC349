<script lang="ts">
    let {
        title,
        summary,
        link,
        preview,
        tags,
        github,
    }: {
        title: string;
        summary: string;
        link: string;
        preview: string;
        tags?: string[];
        github?: string;
    } = $props();
</script>

<div class="card rounded-lg glass w-96 h-70 shadow-xl">
    <a href={link}>
        <figure class="rounded-t-lg">
            <img src={preview} alt={`${title} preview`} />
        </figure>
    </a>
    <div class="card-body">
        <h2 class="card-title text-primary-content">
            {@html title}
        </h2>
        <p>{@html summary}</p>
        {#if github}
            <a class="link" target="_blank" href={github}>{github}</a>
        {/if}
        <div class="card-actions justify-end">
            {#if tags}
                {#each tags as tag}
                    <div class="badge badge-outline text-secondary">
                        {@html tag}
                    </div>
                {/each}
            {/if}
        </div>
    </div>
</div>

<style>
    figure {
        width: 100%; /* Full width of the parent */
        height: 15vw; /* Fixed height */
        overflow: hidden; /* Hide overflow if the image is larger */
        transition: all 300ms;
    }

    figure:hover {
        height: 20vw; /* Expanded height on hover */
    }

    figure img {
        width: 100%; /* Image takes full width of the container */
        height: auto; /* Maintain aspect ratio */
        object-fit: cover; /* Cover the container */
        object-position: center; /* Center the image */
    }
</style>
