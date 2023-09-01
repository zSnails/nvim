local present, laravel = pcall(require, "laravel")
if not present then
    return
end

laravel.setup()
