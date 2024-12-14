<script lang="ts">
    import Collapse from "$lib/components/collapse/Collapse.svelte";
    let {
        title,
        link,
        width,
        height,
    }: {
        title: string;
        link: string;
        width: number;
        height: number;
    } = $props();
</script>

<Collapse {title}>
    <div class="content flex flex-col justify-center align-center mx-auto">
        <iframe
            {title}
            src={link}
            {width}
            {height}
            frameborder="0"
            scrolling="no"
            class="mx-auto"
        >
            ></iframe
        >
        <div class="p-3" id="small-device">
            <div class="mb-1 skeleton w-48 h-32"></div>
            <h2 class="text-center text-error">
                Your Device is too small for the demo
            </h2>
        </div>
        <div class="text-center">
            <slot />
        </div>
    </div></Collapse
>

<style>
    #small-device {
        visibility: hidden;
        height: 0px;
    }
    @media (max-width: 750px) {
        iframe {
            visibility: hidden;
            display: hidden;
            height: 0px;
        }
        #small-device {
            display: static;
            visibility: visible;
            height: auto;
        }
    }
</style>
