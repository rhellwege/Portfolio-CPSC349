<script lang="ts">
    import { preloadData } from "$app/navigation";
    import { onMount } from "svelte";
    import Navbar from "$lib/components/nav/Navbar.svelte";
    import "../app.css";
</script>

<Navbar />
<main class="bg-slate-50"><slot /></main>

<svelte:head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</svelte:head>

<style>
    main {
        min-height: 100vh;
    }
</style>
