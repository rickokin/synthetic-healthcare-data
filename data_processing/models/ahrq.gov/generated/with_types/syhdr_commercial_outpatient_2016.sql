-- SQL model for syhdr_commercial_outpatient_2016.CSV
{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

SELECT
    PERSON_ID::UBIGINT AS PERSON_ID,
    PERSON_WGHT::NUMERIC AS PERSON_WGHT,
    FACILITY_ID::UBIGINT AS FACILITY_ID,
    CLM_CNTL_NUM::NUMERIC AS CLM_CNTL_NUM,
    AT_SPCLTY::VARCHAR AS AT_SPCLTY,
    SRVC_BEG_DATE::DATE AS SRVC_BEG_DATE,
    SRVC_END_DATE::DATE AS SRVC_END_DATE,
    LOS::UINTEGER AS LOS,
    ADMSN_TYPE::VARCHAR AS ADMSN_TYPE,
    TOB_CD::VARCHAR AS TOB_CD,
    CLM_TYPE_CD::VARCHAR AS CLM_TYPE_CD,
    DSCHRG_STUS::VARCHAR AS DSCHRG_STUS,
    PRMRY_DX_IMPUTED::VARCHAR AS PRMRY_DX_IMPUTED,
    PRMRY_DX_CD::VARCHAR AS PRMRY_DX_CD,
    ICD_DX_CD_1::VARCHAR AS ICD_DX_CD_1,
    ICD_DX_CD_2::VARCHAR AS ICD_DX_CD_2,
    ICD_DX_CD_3::VARCHAR,
    ICD_DX_CD_4::VARCHAR,
    ICD_DX_CD_5::VARCHAR,
    ICD_DX_CD_6::VARCHAR,
    ICD_DX_CD_7::VARCHAR,
    ICD_DX_CD_8::VARCHAR,
    ICD_DX_CD_9::VARCHAR,
    ICD_DX_CD_10::VARCHAR,
    ICD_DX_CD_11::VARCHAR,
    ICD_DX_CD_12::VARCHAR,
    ICD_DX_CD_13::VARCHAR,
    ICD_DX_CD_14::VARCHAR,
    ICD_DX_CD_15::VARCHAR,
    ICD_DX_CD_16::VARCHAR,
    ICD_DX_CD_17::VARCHAR,
    ICD_DX_CD_18::VARCHAR,
    ICD_DX_CD_19::VARCHAR,
    ICD_DX_CD_20::VARCHAR,
    ICD_DX_CD_21::VARCHAR,
    ICD_DX_CD_22::VARCHAR,
    ICD_DX_CD_23::VARCHAR,
    ICD_DX_CD_24::VARCHAR,
    ICD_DX_CD_25::VARCHAR AS ICD_DX_CD_25,
    ICD_PRCDR_CD_1::VARCHAR AS ICD_PRCDR_CD_1,
    ICD_PRCDR_CD_2::VARCHAR AS ICD_PRCDR_CD_2,
    ICD_PRCDR_CD_3::VARCHAR,
    ICD_PRCDR_CD_4::VARCHAR,
    ICD_PRCDR_CD_5::VARCHAR,
    ICD_PRCDR_CD_6::VARCHAR,
    ICD_PRCDR_CD_7::VARCHAR,
    ICD_PRCDR_CD_8::VARCHAR,
    ICD_PRCDR_CD_9::VARCHAR,
    ICD_PRCDR_CD_10::VARCHAR,
    ICD_PRCDR_CD_11::VARCHAR,
    ICD_PRCDR_CD_12::VARCHAR,
    ICD_PRCDR_CD_13::VARCHAR,
    ICD_PRCDR_CD_14::VARCHAR,
    ICD_PRCDR_CD_15::VARCHAR,
    ICD_PRCDR_CD_16::VARCHAR,
    ICD_PRCDR_CD_17::VARCHAR,
    ICD_PRCDR_CD_18::VARCHAR,
    ICD_PRCDR_CD_19::VARCHAR,
    ICD_PRCDR_CD_20::VARCHAR,
    ICD_PRCDR_CD_21::VARCHAR,
    ICD_PRCDR_CD_22::VARCHAR,
    ICD_PRCDR_CD_23::VARCHAR,
    ICD_PRCDR_CD_24::VARCHAR,
    ICD_PRCDR_CD_25::VARCHAR AS ICD_PRCDR_CD_25,
    CPT_PRCDR_CD_1::VARCHAR AS CPT_PRCDR_CD_1,
    CPT_PRCDR_CD_2::VARCHAR,
    CPT_PRCDR_CD_3::VARCHAR AS CPT_PRCDR_CD_3,
    CPT_PRCDR_CD_4::VARCHAR,
    CPT_PRCDR_CD_5::VARCHAR,
    CPT_PRCDR_CD_6::VARCHAR,
    CPT_PRCDR_CD_7::VARCHAR,
    CPT_PRCDR_CD_8::VARCHAR,
    CPT_PRCDR_CD_9::VARCHAR,
    CPT_PRCDR_CD_10::VARCHAR,
    CPT_PRCDR_CD_11::VARCHAR,
    CPT_PRCDR_CD_12::VARCHAR,
    CPT_PRCDR_CD_13::VARCHAR,
    CPT_PRCDR_CD_14::VARCHAR,
    CPT_PRCDR_CD_15::VARCHAR,
    CPT_PRCDR_CD_16::VARCHAR,
    CPT_PRCDR_CD_17::VARCHAR,
    CPT_PRCDR_CD_18::VARCHAR,
    CPT_PRCDR_CD_19::VARCHAR,
    CPT_PRCDR_CD_20::VARCHAR,
    CPT_PRCDR_CD_21::VARCHAR,
    CPT_PRCDR_CD_22::VARCHAR,
    CPT_PRCDR_CD_23::VARCHAR,
    CPT_PRCDR_CD_24::VARCHAR,
    CPT_PRCDR_CD_25::VARCHAR,
    CPT_PRCDR_CD_26::VARCHAR,
    CPT_PRCDR_CD_27::VARCHAR,
    CPT_PRCDR_CD_28::VARCHAR,
    CPT_PRCDR_CD_29::VARCHAR,
    CPT_PRCDR_CD_30::VARCHAR,
    CPT_PRCDR_CD_31::VARCHAR,
    CPT_PRCDR_CD_32::VARCHAR,
    CPT_PRCDR_CD_33::VARCHAR,
    CPT_PRCDR_CD_34::VARCHAR,
    CPT_PRCDR_CD_35::VARCHAR AS CPT_PRCDR_CD_35,
    replace(replace(PLAN_PMT_AMT, '$', ''), ',', '')::FLOAT AS PLAN_PMT_AMT,
    replace(replace(TOT_CHRG_AMT, '$', ''), ',', '')::FLOAT AS TOT_CHRG_AMT
FROM read_csv('~/data/syh_dr/syhdr_commercial_outpatient_2016.CSV', header=True, null_padding=true, types={'CPT_PRCDR_CD_1': 'VARCHAR', 'CPT_PRCDR_CD_2': 'VARCHAR', 'CPT_PRCDR_CD_3': 'VARCHAR', 'CPT_PRCDR_CD_4': 'VARCHAR', 'CPT_PRCDR_CD_5': 'VARCHAR', 'CPT_PRCDR_CD_6': 'VARCHAR', 'CPT_PRCDR_CD_7': 'VARCHAR', 'CPT_PRCDR_CD_8': 'VARCHAR', 'CPT_PRCDR_CD_9': 'VARCHAR', 'CPT_PRCDR_CD_10': 'VARCHAR', 'CPT_PRCDR_CD_11': 'VARCHAR', 'CPT_PRCDR_CD_12': 'VARCHAR', 'CPT_PRCDR_CD_13': 'VARCHAR', 'CPT_PRCDR_CD_14': 'VARCHAR', 'CPT_PRCDR_CD_15': 'VARCHAR', 'CPT_PRCDR_CD_16': 'VARCHAR', 'CPT_PRCDR_CD_17': 'VARCHAR', 'CPT_PRCDR_CD_18': 'VARCHAR', 'CPT_PRCDR_CD_19': 'VARCHAR', 'CPT_PRCDR_CD_20': 'VARCHAR', 'CPT_PRCDR_CD_21': 'VARCHAR', 'CPT_PRCDR_CD_22': 'VARCHAR', 'CPT_PRCDR_CD_23': 'VARCHAR', 'CPT_PRCDR_CD_24': 'VARCHAR', 'CPT_PRCDR_CD_25': 'VARCHAR', 'CPT_PRCDR_CD_26': 'VARCHAR', 'CPT_PRCDR_CD_27': 'VARCHAR', 'CPT_PRCDR_CD_28': 'VARCHAR', 'CPT_PRCDR_CD_29': 'VARCHAR', 'CPT_PRCDR_CD_30': 'VARCHAR', 'CPT_PRCDR_CD_31': 'VARCHAR', 'CPT_PRCDR_CD_32': 'VARCHAR', 'CPT_PRCDR_CD_33': 'VARCHAR', 'CPT_PRCDR_CD_34': 'VARCHAR', 'CPT_PRCDR_CD_35': 'VARCHAR'}, ignore_errors=true)