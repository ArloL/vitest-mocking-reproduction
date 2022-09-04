import { expect, test, vi } from "vitest";
import { app } from "./app";

vi.mock('./app');

test('The function is mocked', () => {
  expect(vi.isMockFunction(app)).toBe(true);
});
