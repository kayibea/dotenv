describe("Dotenv Parser", function()
    require "dotenv".config()

    it("loads basic key-value pairs", function()
        assert.are.equal("MyApp", os.getenv("APP_NAME"))
        assert.are.equal("8080", os.getenv("PORT"))
        assert.are.equal("true", os.getenv("DEBUG"))
    end)

    it("loads quoted values", function()
        assert.are.equal("admin", os.getenv("DB_USER"))
        assert.are.equal("s3cr3t", os.getenv("DB_PASS"))
    end)

    it("trims spaces around equal signs", function()
        assert.are.equal("localhost", os.getenv("HOST"))
    end)

    it("supports escaped newlines in values", function()
        local private_key = os.getenv("PRIVATE_KEY")
        assert.is.truthy(private_key)
        assert.is_not_nil(private_key:match("BEGIN PRIVATE KEY"))
        assert.is_not_nil(private_key:match("END PRIVATE KEY"))
    end)

    it("handles empty values", function()
        assert.are.equal("", os.getenv("EMPTY"))
    end)

    it("ignores comments and non-key-value lines", function()
        assert.is_nil(os.getenv("#"))
        assert.is_nil(os.getenv(";"))
    end)

    it("supports unicode and special characters", function()
        assert.are.equal("✓", os.getenv("UNICODE"))
        assert.are.equal("!@#$%^&*()_+-=[]{}|;:,.<>?", os.getenv("SPECIAL_CHARS"))
    end)

    it("supports keys with periods", function()
        assert.are.equal("/usr/local/config", os.getenv("config.path"))
    end)

    it("uses the last value for duplicate keys", function()
        assert.are.equal("value2", os.getenv("DUPLICATE"))
    end)
end)
