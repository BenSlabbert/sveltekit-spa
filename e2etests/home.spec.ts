import { test, expect } from '@playwright/test';

test('has title', async ({ page }) => {
	await page.goto('/');

	await expect(page).toHaveTitle('SPA Sveletekit App');
});

test('has about', async ({ page }) => {
	await page.goto('/');
	await page.getByRole('link', { name: 'About' }).click();
	await page.getByText('info about this app').click();
});

test('has number', async ({ page }) => {
	await page.goto('/');
	await page.getByRole('link', { name: 'number' }).click();
	await page.getByRole('heading', { name: 'id: 1' }).click();
});
