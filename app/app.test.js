import { beforeEach, describe, expect, it, vi } from "vitest";
import { App } from "./app";

const contentOverview = "The mocked overview";

vi.mock("./overview", () => {
  return {
    Overview: () => contentOverview,
  };
});

describe("App", () => {

  beforeEach(() => {
    vi.clearAllMocks();
  });

  it("renders", () => {
    const contentApp = App();
    expect(contentApp).toBe(contentOverview);
  });

});
