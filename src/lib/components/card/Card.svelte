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

<div
    class="card bg-base-300 rounded-lg w-96 shadow-xl transition-transform transform hover:scale-105"
>
    <a href={link} class="block">
        <figure class="rounded-t-lg overflow-hidden">
            <img
                src={preview}
                alt={`${title} preview`}
                class="w-full h-48 object-cover transition-transform duration-300 transform hover:scale-110"
            />
        </figure>
    </a>
    <div class="card-body">
        <h2 class="card-title text-primary-content text-lg font-semibold">
            {@html title}
        </h2>
        <p class="text-gray-700">{@html summary}</p>
        {#if github}
            <a class="link hover:underline" target="_blank" href={github}
                >{github}</a
            >
        {/if}
        <div class="card-actions justify-end mt-2">
            {#if tags}
                {#each tags as tag}
                    <div class="badge badge-outline text-secondary mr-1">
                        {@html tag}
                    </div>
                {/each}
            {/if}
        </div>
    </div>
</div>

<style>
    .card {
        transition: transform 0.2s;
    }

    figure {
        overflow: hidden;
    }

    figure img {
        width: 100%;
        height: auto;
        object-fit: cover;
        object-position: center;
    }
</style>
