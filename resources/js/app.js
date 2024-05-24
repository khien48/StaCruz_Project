import './bootstrap';
import '../css/app.css';
import 'primevue/resources/themes/lara-light-green/theme.css'

import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import PrimeVue from 'primevue/config';
import { ZiggyVue } from '../../vendor/tightenco/ziggy';
import vuetify from './Plugins/vuetify.js';
import Splitter from 'primevue/splitter';
import SplitterPanel from 'primevue/splitterpanel';

const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        return createApp({ render: () => h(App, props) })
            .use(plugin)
            .use(ZiggyVue)
            .use(vuetify)
            .use(PrimeVue)
            .component('Splitter', Splitter)
            .component('SplitterPanel', SplitterPanel)
            .mount(el);
 
    },
    progress: {
        color: '#4B5563',
    },
});
