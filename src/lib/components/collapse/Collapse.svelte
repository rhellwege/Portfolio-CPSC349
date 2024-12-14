<script lang="ts">
    import { onMount } from "svelte";
    let isOpen = $state(false);
    let { title }: { title: string } = $props();
    let contentHeight = $state("0px");
    let content: HTMLDivElement;

    // Function to toggle the collapse
    function toggleCollapse() {
        isOpen = !isOpen;

        // Use requestAnimationFrame to ensure the height is calculated after the DOM update
        requestAnimationFrame(() => {
            if (isOpen) {
                contentHeight = `${content.scrollHeight - 50}px`;
            } else {
                contentHeight = "0px";
            }
        });
    }
</script>

<div id="main" class="mx-auto">
    <button
        class="flex items-center justify-between w-full p-4 text-left border-2 border-base-content text-base-content rounded-t-lg {isOpen
            ? ''
            : 'rounded-b-lg'}"
        onclick={toggleCollapse}
    >
        <h2 class="text-lg font-semibold">{title}</h2>
        <span class="ml-2">{isOpen ? "−" : "+"}</span>
    </button>
    <div
        bind:this={content}
        class="overflow-hidden transition-all duration-300 ease-in-out border-base-content border-2 rounded-b-lg p-4 border-t-0"
        style="height: {isOpen
            ? contentHeight
            : '0px'}; border-top: none; opacity: {isOpen ? '100%' : '0%'}"
    >
        <slot />
    </div>
</div>

<h3 id="small-device" class="text-center semi-bold text-info">
    Your Device is too small for the browser demo.
</h3>

<style>
    #small-device {
        visibility: hidden;
    }
    @media (max-width: 1000px) {
        #main {
            visibility: hidden;
            height: 0px;
        }
        #small-device {
            visibility: visible;
        }
    }
</style>
