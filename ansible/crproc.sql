CREATE PROCEDURE VA1.GEN_ANSIBLE_DATA()
LANGUAGE plpgsql
AS $$
    begin
    for i in 1 .. 8000 loop
      for j in 1 .. 200 loop
        insert into VA1.VA1_ANSIBLE(ID, DD, CC) values(nextval('VA1.VA1_ANSIBLE_SQ'), current_date - i, md5(random()::text));
      end loop;
    end loop;
    commit;
  end;
$$;

commit;

