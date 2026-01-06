.class public final Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BORA_POLICY_ENABLE:Z

.field public static DEBUG:Z

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field public static final LMKD_REENTRY_MODE_ENABLE:Z

.field public static LMK_CUSTOM_SW_LIMIT:I

.field public static LMK_CUSTOM_TM_LIMIT:I

.field public static final LMK_ENABLE_REENTRY_LMK:Z

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z

.field public static final LMK_ENABLE_USERSPACE_LMK:Z

.field public static LMK_FREELIMIT_ENABLE:Z

.field public static LMK_FREELIMIT_VAL:I

.field public static final LMK_LOW_MEM_KEEP_ENABLE:Z

.field public static LMK_PSI_CRITICAL_TH:I

.field public static LMK_PSI_MEDIUM_TH:I

.field public static LMK_UPGRADE_PRESSURE:I

.field public static LMK_USE_MINFREE_LEVELS:Z

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field public static PICKED_ADJ_ENABLE:Z

.field public static final alliedProtectedProcList:Ljava/util/ArrayList;

.field public static lastStartTime:J

.field public static lastTime:J

.field public static mLMKArray:Ljava/lang/String;

.field public static mLMKScale:F

.field public static final mTotalMemMb:J

.field public static reentryCount:I

.field public static final reentryMap:Ljava/util/HashMap;

.field public static sHH_AMSExceptionEnable:Z

.field public static final sPkgDecoder:Ljava/util/Base64$Decoder;


# instance fields
.field public ActiveLaunchCount:I

.field public final ActiveLaunchLimit:I

.field public ActiveLaunchSlot:Ljava/util/ArrayList;

.field public HomeHubState:Z

.field public MlLaunchSlot:Ljava/util/ArrayList;

.field public isReentryMode:Z

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBGProtectManager:Lcom/android/server/am/BGProtectManager;

.field public final mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

.field public mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mContext:Landroid/content/Context;

.field public final mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v0, "dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "enable_picked_adj"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    const-string/jumbo v0, "bora_policy_enable"

    const-string/jumbo v2, "false"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    const-string/jumbo v0, "hh_ams_exception"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    const-string/jumbo v0, "neverkill_num_lowram"

    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "neverkill_num_8G"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "neverkill_num_12G"

    const-string v6, "3"

    invoke-static {v5, v6}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "neverkill_num_16G"

    const-string v7, "5"

    invoke-static {v6, v7}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v7

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    sput-wide v7, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v9, 0x2800

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    sput-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    const-wide/16 v12, 0x3000

    cmp-long v9, v7, v12

    if-lez v9, :cond_1

    sput v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x2000

    cmp-long v6, v7, v12

    if-lez v6, :cond_2

    sput v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x1800

    cmp-long v5, v7, v5

    if-lez v5, :cond_3

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_3
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    :goto_1
    const-string/jumbo v0, "low"

    const-string v4, "1001"

    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "medium"

    const-string v4, "850"

    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "critical"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "debug"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "critical_upgrade"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "upgrade_pressure"

    const-string v3, "80"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string/jumbo v0, "downgrade_pressure"

    const-string v3, "100"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "kill_heaviest_task"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const-string/jumbo v0, "kill_timeout_ms"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "use_minfree_levels"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    const-string/jumbo v0, "enable_cmarbinfree_sub"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "enable_upgrade_criadj"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string/jumbo v0, "freelimit_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    const-string/jumbo v0, "freelimit_val"

    const-string v2, "11"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string/jumbo v0, "custom_sw_limit"

    const-string v2, "500"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string/jumbo v0, "custom_tm_limit"

    const-string v2, "1000"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    const-string/jumbo v0, "psi_low"

    const-string v2, "70"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "psi_medium"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    const-string/jumbo v0, "psi_critical"

    const-string v2, "120"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    const-string/jumbo v0, "reentry_mode_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "add_bonusEFK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const-string/jumbo v1, "v_bonusEFK"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const-string/jumbo v3, "v_BootEFK"

    const-string v4, "204800"

    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    const-string/jumbo v3, "v_decrease_EFK"

    invoke-static {v3, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v3, "tm_decrease_EFK"

    const-string v4, "1000"

    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    mul-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    new-instance v0, Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    new-instance v1, Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/BGSlotManager;-><init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    new-instance v0, Lcom/android/server/am/BGProtectManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "ro.board.platform"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "remove_contact_except_list"

    const-string/jumbo v3, "false"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    const-string/jumbo v1, "dha_pallowlist_enable"

    const-string v5, "1"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const-string/jumbo v1, "dha_knox_plist_enable"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v1, "provider_upgrade_adj"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    const-string/jumbo v1, "ams_knoxexpt_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v1, "dha_dialer_except_th"

    const-string v5, "3072"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    const-string/jumbo v1, "cleanup_webview_enable"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    const-string/jumbo v1, "picked_adj_tm"

    const-string v5, "1800000"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    const-string/jumbo v1, "neverkill_sqetool_enable"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const-string/jumbo v1, "beks_enable"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    const-string/jumbo v1, "bora_cached_num"

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    return-void
.end method

.method public static decodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z
.locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setLmkdCameraKillBoost(III)V
.locals 0

    return-void
.end method


# virtual methods
.method public final dumpLMKDParameter(Ljava/io/PrintWriter;)V
.locals 0

    return-void
.end method

.method public final initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
.locals 0

    return-void
.end method

.method public final resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
.locals 0

    return-void
.end method

.method public final setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
.locals 1

    const/4 v0, 0x0

    return v0
.end method
