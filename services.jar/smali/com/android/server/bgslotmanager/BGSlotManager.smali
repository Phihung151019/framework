.class public final Lcom/android/server/bgslotmanager/BGSlotManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static BGHandler:Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

.field public static BGHandlerThread:Lcom/android/server/ServiceThread;

.field public static BONUS_MAX_CACHED_APPS_PER_SWAP:I

.field public static final HRT_MaxCached_Enable:Z

.field public static final IS_CHINA_MODEL:Z

.field public static MAX_CACHED_APPS:I

.field public static MAX_EMPTY_APPS:I

.field public static MIN_CACHED_APPS:I

.field public static MIN_EMPTY_APPS:I

.field public static final STATIC_MAX_EMPTY_FOR_OVER_8GB:I


# instance fields
.field public BGSlotState:I

.field public final CHN_REDUCE_CACHED:I

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public originCachedMax:I

.field public originCachedMin:I

.field public originEmptyMax:I

.field public originEmptyMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    const-string/jumbo v0, "cached_max"

    const-string v1, "512"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    const-string/jumbo v0, "dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    const-string/jumbo v0, "dha_empty_max"

    const-string v1, "24"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    const-string/jumbo v0, "dha_empty_limit"

    const-string v1, "32"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    const-string/jumbo v0, "dha_hrt_max_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandler:Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "reduce_chn_cached_max"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-void
.end method


# virtual methods
.method public final changeBGSlot()V
    .locals 0

    return-void
.end method

.method public final setBonusMaxCachedAppsPerSwap()V
    .locals 0

    return-void
.end method

.method public final updateDefaultCachedMAX()V
    .locals 0

    return-void
.end method
