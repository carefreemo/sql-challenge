-- Table: public.title

-- DROP TABLE IF EXISTS public.title;

CREATE TABLE IF NOT EXISTS public.title
(
    title_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT title_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.title
    OWNER to postgres;