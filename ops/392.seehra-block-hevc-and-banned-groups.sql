-- @operation: export
-- @entity: batch
-- @name: Seehra profiles: block HEVC and Banned Groups (Regular)
-- @exportedAt: 2026-10-27T23:15:00.000Z

-- The Seehra profiles (op 204) were copied from 1080p/2160p Remux and inherited -999999 on
-- the h265 and x265 (WEB) custom formats. Upstream op 384 (simplify-codecs) deleted those
-- formats in favour of a single HEVC format, and the FK cascade dropped the blocks with them.
-- Re-block on HEVC, matching what upstream's Remux profiles now score.
-- Also restore Banned Groups (Regular), which the Remux profiles score -999999 but the
-- Seehra copies left out.

-- ===== 1080p — Seehra =====
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('1080p — Seehra','HEVC','radarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('1080p — Seehra','HEVC','sonarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('1080p — Seehra','Banned Groups (Regular)','radarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('1080p — Seehra','Banned Groups (Regular)','sonarr',-999999);

-- ===== 2160p — Seehra =====
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('2160p — Seehra','HEVC','radarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('2160p — Seehra','HEVC','sonarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('2160p — Seehra','Banned Groups (Regular)','radarr',-999999);
INSERT INTO quality_profile_custom_formats (quality_profile_name,custom_format_name,arr_type,score) VALUES ('2160p — Seehra','Banned Groups (Regular)','sonarr',-999999);
