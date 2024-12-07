<script lang="ts">
    import { page } from "$app/stores";
    import { onMount } from "svelte";

    let jsEnabled = false;
    onMount(() => (jsEnabled = true));

    const navItems = [
        { title: "Home", path: "/" },
        { title: "About", path: "/about" },
        { title: "Projects", path: "/projects" },
        { title: "Contact", path: "/contact" },
        { title: "Skills", path: "/skills" },
    ];

    let isOpen = false; // Reactive variable to manage the menu state

    function toggleMenu() {
        isOpen = !isOpen; // Toggle the menu state
    }

    function handleClose(ev: Event) {
        ev.stopPropagation();
        isOpen = false; // Close the menu
    }
</script>

<nav class="bg-white shadow-md">
    <div class="container mx-auto flex justify-between items-center p-4">
        <div class="flex-grow">
            <h1 class="text-lg font-bold">Ryan Hellwege Portfolio</h1>
        </div>

        <section class="nav-links">
            <ul
                class={`pages flex-col md:flex-row md:space-x-4 ${isOpen ? "flex mr-4" : "hidden"} md:flex`}
            >
                {#each navItems as { title, path } (path)}
                    <li class="md:mr-5">
                        <!-- Add margin to the right for spacing -->
                        <a
                            on:click={handleClose}
                            href={path}
                            class={`text-gray-700 hover:text-blue-500 ${path === $page.url.pathname ? "font-bold text-blue-500" : ""}`}
                            aria-current={path === $page.url.pathname
                                ? "page"
                                : undefined}
                        >
                            {@html title}
                        </a>
                    </li>
                {/each}
            </ul>
        </section>

        <label
            for="navToggle"
            class="menu cursor-pointer flex flex-col gap-1 md:hidden"
            aria-label="Toggle navigation"
            on:click={toggleMenu}
        >
            {#if isOpen}
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300 transform rotate-45"
                />
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300 opacity-0"
                />
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300 transform -rotate-45"
                />
            {:else}
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300"
                />
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300"
                />
                <div
                    class="menuLine w-6 h-1 bg-black transition-all duration-300"
                />
            {/if}
        </label>
    </div>
</nav>

<style>
    /* Additional styles can be added here if needed */
</style>
