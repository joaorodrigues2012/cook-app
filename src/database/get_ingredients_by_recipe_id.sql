CREATE
OR REPLACE FUNCTION get_ingredients_by_recipe_id(p_recipe_id UUID) RETURNS TABLE (id UUID, name character varying, image text) AS $$
BEGIN
RETURN QUERY SELECT i.id, i.name, i.image FROM recipes_ingredients ri INNER JOIN ingredients i ON ri.ingredient_id = i.id WHERE ri.recipe_id = p_recipe_id;
END; $$
LANGUAGE plpgsql;