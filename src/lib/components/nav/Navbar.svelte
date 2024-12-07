<script lang="ts">
    import { page } from "$app/stores";
    import { onMount } from "svelte";

    const navItems = [
        { title: "Home", path: "/", icon: "/icons/house.svg" },
        { title: "About", path: "/about", icon: "/icons/info.svg" },
        { title: "Projects", path: "/projects", icon: "/icons/dices.svg" },
        { title: "Contact", path: "/contact", icon: "/icons/contact.svg" },
        { title: "Skills", path: "/skills", icon: "/icons/wand-sparkles.svg" },
    ];

    let isOpen = false;

    function toggleMenu() {
        isOpen = !isOpen;
    }

    function handleClose(ev: Event) {
        ev.stopPropagation();
        isOpen = false;
    }
</script>

<nav class="bg-base-100 shadow-md">
    <div class="container mx-auto flex justify-between items-center p-4">
        <div class="flex-grow">
            <a
                href="/"
                class="btn-ghost text-xl font-bold"
                on:click={handleClose}>Ryan Hellwege Portfolio</a
            >
        </div>

        <section class="nav-links transition-all duration-300">
            <ul
                class={`pages flex-col md:flex-row md:space-x-4 transition-all duration-300 ${isOpen ? "open gap-4 flex mr-5" : "closed  md:flex"}`}
            >
                {#each navItems as { title, path, icon } (path)}
                    <li class="md:mr-5 overflow-hidden">
                        <a
                            on:click={handleClose}
                            href={path}
                            class={`btn btn-ghost text-lg hover:shadow-lg ${path === $page.url.pathname ? "font-bold text-primary" : ""}`}
                            aria-current={path === $page.url.pathname
                                ? "page"
                                : undefined}
                        >
                            {@html title}
                            <img class="icon" src={icon} alt={title} />
                        </a>
                    </li>
                {/each}
            </ul>
        </section>

        <button
            class="menu cursor-pointer flex flex-col gap-1 md:hidden"
            aria-label="Toggle navigation"
            on:click={toggleMenu}
        >
            <div
                class={`w-6 h-1 bg-base-content transition-all duration-300 ${isOpen ? "rotate-45" : ""}`}
            />
            <div
                class={`w-6 h-1 bg-base-content transition-all duration-300 ${isOpen ? "opacity-0" : ""}`}
            />
            <div
                class={`w-6 h-1 bg-base-content transition-all duration-300 ${isOpen ? "-rotate-45" : ""}`}
            />
        </button>
    </div>
</nav>

<style>
    nav {
        position: sticky;
        top: 0;
        z-index: 1000;
    }
    .pages {
        transition: max-height 0.3s ease;
        overflow: hidden;
        max-height: 40rem;
    }
    @media (max-width: 768px) {
        .pages.closed {
            max-height: 0rem;
        }
    }
    @media (max-width: 460px) {
        img {
            visibility: hidden;
        }
    }
    @media (min-width: 768px) {
        img {
            visibility: hidden;
        }
    }
    @media (min-width: 1024px) {
        img {
            visibility: visible;
        }
    }
</style>
