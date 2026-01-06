.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;,
        Landroid/nfc/cardemulation/CardEmulation$ServiceCall;,
        Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;,
        Landroid/nfc/cardemulation/CardEmulation$NfcInternalErrorType;,
        Landroid/nfc/cardemulation/CardEmulation$SetSubscriptionIdStatus;,
        Landroid/nfc/cardemulation/CardEmulation$ProtocolAndTechnologyRoute;,
        Landroid/nfc/cardemulation/CardEmulation$SetServiceEnabledStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist AID_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final whitelist EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final whitelist EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final whitelist NFC_INTERNAL_ERROR_COMMAND_TIMEOUT:I = 0x3

.field public static final whitelist NFC_INTERNAL_ERROR_NFC_CRASH_RESTART:I = 0x1

.field public static final whitelist NFC_INTERNAL_ERROR_NFC_HARDWARE_ERROR:I = 0x2

.field public static final whitelist NFC_INTERNAL_ERROR_UNKNOWN:I = 0x0

.field private static final blacklist PLPF_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist PROPERTY_ALLOW_SHARED_ROLE_PRIORITY:Ljava/lang/String; = "android.nfc.cardemulation.PROPERTY_ALLOW_SHARED_ROLE_PRIORITY"

.field public static final whitelist PROTOCOL_AND_TECHNOLOGY_ROUTE_DEFAULT:I = 0x3

.field public static final whitelist PROTOCOL_AND_TECHNOLOGY_ROUTE_DH:I = 0x0

.field public static final whitelist PROTOCOL_AND_TECHNOLOGY_ROUTE_ESE:I = 0x1

.field public static final blacklist PROTOCOL_AND_TECHNOLOGY_ROUTE_NDEF_NFCEE:I = 0x4

.field public static final whitelist PROTOCOL_AND_TECHNOLOGY_ROUTE_UICC:I = 0x2

.field public static final whitelist PROTOCOL_AND_TECHNOLOGY_ROUTE_UNSET:I = -0x1

.field public static final whitelist SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final whitelist SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final whitelist SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field public static final whitelist SET_SERVICE_ENABLED_STATUS_FAILURE_ALREADY_SET:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SERVICE_ENABLED_STATUS_FAILURE_FEATURE_UNSUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SERVICE_ENABLED_STATUS_FAILURE_INVALID_SERVICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SERVICE_ENABLED_STATUS_FAILURE_UNKNOWN_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SERVICE_ENABLED_STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SUBSCRIPTION_ID_STATUS_FAILED_INTERNAL_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SUBSCRIPTION_ID_STATUS_FAILED_INVALID_SUBSCRIPTION_ID:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SUBSCRIPTION_ID_STATUS_FAILED_NOT_SUPPORTED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SUBSCRIPTION_ID_STATUS_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SUBSCRIPTION_ID_STATUS_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field static final blacklist TAG:Ljava/lang/String; = "CardEmulation"

.field static blacklist sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sIsInitialized:Z

.field static blacklist sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final blacklist mINfcEventCallback:Landroid/nfc/INfcEventCallback;

.field private final blacklist mNfcEventCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2utjb30J7EvPx7tSQxre9K-m6Dg(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$isDefaultServiceForCategory$0(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$3UrGZ6FIXgI2S62QsZL8GcVnG_E(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$removePollingLoopPatternFilterForService$7(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$6U9Y8xIuocVNFJCeBon_eR_AJks(Landroid/nfc/cardemulation/CardEmulation;)V
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$registerNfcEventCallback$30()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CAUTPtHNMY8Cs_9jXhtMdYpe2_M(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$isDefaultServiceForAid$1(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$FdH8e_KIptRndCYZPzhP6vSYbwY(Landroid/nfc/cardemulation/CardEmulation;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getDefaultNfcSubscriptionId$29()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IOdhGyV-CF-fqyngonZUh5QCn1I(Landroid/nfc/cardemulation/CardEmulation;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getDescriptionForPreferredPaymentService$18()Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JyzL6aZOg2ooc0aWOKFnnGNy9kc(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setDefaultServiceForCategory$19(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Mu2KPel7G1e2hOrTdFmIT8_l3SI(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$removeAidsForService$12(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NM4gJg2Vx8jwdeTac--F4Df8DxA(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getServices$22(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PaafoJppt4CGgdJPCoJz8krlQHw(Landroid/nfc/cardemulation/CardEmulation;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getRouteDestinationForPreferredPaymentService$17()Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$S93jfZYxZAyCtm-V97UnptQ-kLE(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getAidsForService$11(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VDWIg0bkHxwBYqMD3O4aKgpNIMM(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$overrideRoutingTable$25(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VWjrvnbVXPbJMrfAGYR8RSwDOwY(Landroid/nfc/cardemulation/CardEmulation;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$getAidsForPreferredPaymentService$16()Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_XtApPe2iEFUjDpy9CI2g6T_Bbg(Landroid/nfc/cardemulation/CardEmulation;)V
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$unregisterNfcEventCallback$31()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$alLKYbG4fX_qw4no7qYcxFFIev4(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/cardemulation/CardEmulation;->lambda$registerPollingLoopFilterForService$4(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dijTGhS9WrJ4RIM4wDpmrIgIr0Q(Landroid/nfc/cardemulation/CardEmulation;)V
    .locals 0

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$recoverRoutingTable$26()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hYW1NOL_3I9kt5RUH2gCGPWnOFE(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$removePollingLoopFilterForService$5(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$iEUnCYtltF1HgOg737QLvwdzDD0(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->lambda$unsetOffHostForService$9(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$lKUk-kINcLplBgbB5-5VRc0llCI(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setShouldDefaultToObserveModeForService$3(Landroid/content/ComponentName;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qJfuWLBGUg9T76i2O-Kph9guO0c(Landroid/nfc/cardemulation/CardEmulation;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setDefaultNfcSubscriptionId$28(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qdx4iB6vrO_tcKik9vKxGtRY_c0(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setOffHostForService$10(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qkURqEuZtPYmgeTGNlahZxsDDtY(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$registerAidsForService$8(Landroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wVz99yQCgLntNO1-udnKXtGiBnw(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/cardemulation/CardEmulation;->lambda$registerPollingLoopPatternFilterForService$6(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ymyAMV6cuaIMIvutn2PYab4m-1A(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setDefaultForNextTap$20(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Landroid/nfc/cardemulation/CardEmulation;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 81
    const-string v0, "[0-9A-Fa-f]{10,32}\\*?\\#?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    nop

    .line 83
    const-string v0, "[0-9A-Fa-f]{2,}[0-9A-Fa-f,\\?,\\*\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->PLPF_PATTERN:Ljava/util/regex/Pattern;

    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    .line 1428
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$1;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mINfcEventCallback:Landroid/nfc/INfcEventCallback;

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 290
    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 291
    return-void
.end method

.method public static blacklist callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V
    .locals 2
    .param p0, "call"    # Landroid/nfc/cardemulation/CardEmulation$ServiceCall;

    .line 1244
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v0, :cond_0

    .line 1245
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "NFC CardEmulation Service is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 1247
    invoke-static {}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1249
    :cond_0
    invoke-interface {p0}, Landroid/nfc/cardemulation/CardEmulation$ServiceCall;->call()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 1252
    invoke-static {}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1254
    :try_start_1
    invoke-interface {p0}, Landroid/nfc/cardemulation/CardEmulation$ServiceCall;->call()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1257
    goto :goto_0

    .line 1255
    :catch_1
    move-exception v1

    .line 1256
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1259
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1267
    .local p0, "call":Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;, "Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn<TT;>;"
    .local p1, "defaultReturn":Ljava/lang/Object;, "TT;"
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "NFC CardEmulation Service is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 1270
    invoke-static {}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1272
    :cond_0
    invoke-interface {p0}, Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Landroid/os/RemoteException;)V

    .line 1275
    invoke-static {}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1278
    :try_start_1
    invoke-interface {p0}, Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1279
    :catch_1
    move-exception v1

    .line 1280
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1283
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object p1
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 6
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v0

    .line 300
    if-eqz p0, :cond_6

    .line 301
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 302
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 306
    sget-boolean v2, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 308
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 312
    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    const/4 v3, 0x1

    sput-boolean v3, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    goto :goto_0

    .line 313
    :cond_0
    const-string v3, "CardEmulation"

    const-string v4, "This device does not support card emulation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 309
    :cond_1
    const-string v3, "CardEmulation"

    const-string v4, "Cannot get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 318
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    .line 319
    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_4

    .line 321
    invoke-static {}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    .line 322
    .local v3, "service":Landroid/nfc/INfcCardEmulation;
    if-eqz v3, :cond_3

    .line 326
    new-instance v4, Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {v4, v1, v3}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    move-object v2, v4

    .line 327
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_3
    const-string v4, "CardEmulation"

    const-string v5, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v3    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v2

    .line 303
    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    :cond_5
    :try_start_1
    const-string v2, "CardEmulation"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 299
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 300
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static whitelist getPreferredPaymentService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1226
    const-string v0, "android.permission.NFC_PREFERRED_PAYMENT_INFO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "defaultPaymentComponent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1231
    const/4 v1, 0x0

    return-object v1

    .line 1234
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isValidAid(Ljava/lang/String;)Z
    .locals 7
    .param p0, "aid"    # Ljava/lang/String;

    .line 950
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 951
    return v0

    .line 954
    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "#"

    const-string v4, " is not a valid AID."

    const-string v5, "AID "

    const-string v6, "CardEmulation"

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return v0

    .line 960
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return v0

    .line 966
    :cond_3
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_4

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return v0

    .line 971
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$getAidsForPreferredPaymentService$16()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getAidsForService$11(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 689
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDefaultNfcSubscriptionId$29()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getDefaultNfcSubscriptionId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDescriptionForPreferredPaymentService$18()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getRouteDestinationForPreferredPaymentService$17()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSelectionModeForCategory$2()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->isDefaultPaymentRegistered()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getServices$22(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 886
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 885
    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getServices$23(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p0, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isDefaultServiceForAid$1(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 370
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isDefaultServiceForCategory$0(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 354
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 353
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isEuiccSupported$27()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->isEuiccSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$overrideRoutingTable$25(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "protocolRoute"    # Ljava/lang/String;
    .param p2, "technologyRoute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1073
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1076
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/nfc/INfcCardEmulation;->overrideRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$recoverRoutingTable$26()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1097
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1096
    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->recoverRoutingTable(I)V

    return-void
.end method

.method private synthetic blacklist lambda$registerAidsForService$8(Landroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 584
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 583
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$registerNfcEventCallback$30()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mINfcEventCallback:Landroid/nfc/INfcEventCallback;

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->registerNfcEventCallback(Landroid/nfc/INfcEventCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerPollingLoopFilterForService$4(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopFilterV"    # Ljava/lang/String;
    .param p3, "autoTransact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 481
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerPollingLoopFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$registerPollingLoopPatternFilterForService$6(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopPatternFilterV"    # Ljava/lang/String;
    .param p3, "autoTransact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 530
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerPollingLoopPatternFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removeAidsForService$12(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 712
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 711
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removePollingLoopFilterForService$5(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopFilterV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 500
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 499
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->removePollingLoopFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$removePollingLoopPatternFilterForService$7(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopPatternFilterV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 556
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 555
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->removePollingLoopPatternFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setDefaultForNextTap$20(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 869
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 868
    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setDefaultForNextTap$21(ILandroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p0, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setDefaultNfcSubscriptionId$28(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1185
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-interface {v0, p1, v1}, Landroid/nfc/INfcCardEmulation;->setDefaultNfcSubscriptionId(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setDefaultServiceForCategory$19(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 860
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 859
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setOffHostForService$10(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "offHostSecureElementV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 670
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 669
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setPreferredService$13(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p0}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setServiceEnabledForCategoryOther$24(ILandroid/content/ComponentName;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p0, p1, p2}, Landroid/nfc/INfcCardEmulation;->setServiceEnabledForCategoryOther(ILandroid/content/ComponentName;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setShouldDefaultToObserveModeForService$3(Landroid/content/ComponentName;Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 458
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setShouldDefaultToObserveModeForService(ILandroid/content/ComponentName;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$supportsAidPrefixRegistration$15()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$unregisterNfcEventCallback$31()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mINfcEventCallback:Landroid/nfc/INfcEventCallback;

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->unregisterNfcEventCallback(Landroid/nfc/INfcEventCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$unsetOffHostForService$9(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 608
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 607
    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$unsetPreferredService$14()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private blacklist linkToNfcDeath()V
    .locals 3

    .line 1511
    :try_start_0
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$2;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$2;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1535
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "CardEmulation"

    const-string v2, "Couldn\'t link to death"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist routeIntToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    .line 1288
    packed-switch p0, :pswitch_data_0

    .line 1295
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :pswitch_0
    const-string v0, "NDEF-NFCEE"

    goto :goto_0

    .line 1293
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1291
    :pswitch_2
    const-string v0, "SIM"

    goto :goto_0

    .line 1290
    :pswitch_3
    const-string v0, "eSE"

    goto :goto_0

    .line 1289
    :pswitch_4
    const-string v0, "DH"

    goto :goto_0

    .line 1292
    :pswitch_5
    const/4 v0, 0x0

    .line 1288
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist validatePollingLoopFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pollingLoopFilter"    # Ljava/lang/String;

    .line 912
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HexFormat;->parseHex(Ljava/lang/CharSequence;)[B

    move-result-object v0

    .line 913
    .local v0, "plfBytes":[B
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 917
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HexFormat;->withUpperCase()Ljava/util/HexFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 914
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Polling loop filter must contain at least one byte."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist validatePollingLoopPatternFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pollingLoopPatternFilter"    # Ljava/lang/String;

    .line 929
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->PLPF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polling loop pattern filters may only contain hexadecimal numbers, ?s and *s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 7
    .param p1, "category"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 393
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 392
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "contextAsUser":Landroid/content/Context;
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 396
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    const-string v3, "android.app.role.WALLET"

    invoke-virtual {v1, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 397
    return v4

    .line 400
    :cond_0
    const-string v3, "payment"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const/4 v3, 0x0

    .line 403
    .local v3, "preferForeground":Z
    nop

    .line 404
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nfc_payment_foreground"

    .line 403
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    move v2, v4

    :cond_1
    move v3, v2

    .line 407
    goto :goto_0

    .line 406
    :catch_0
    move-exception v2

    .line 408
    :goto_0
    return v3

    .line 411
    .end local v3    # "preferForeground":Z
    :cond_2
    return v4
.end method

.method public whitelist getAidsForPreferredPaymentService()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda6;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 793
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public whitelist getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda26;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 691
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public whitelist getDefaultNfcSubscriptionId()I
    .locals 2

    .line 1206
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda15;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    .line 1208
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1206
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getDescriptionForPreferredPaymentService()Ljava/lang/CharSequence;
    .locals 2

    .line 849
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda8;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 851
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public whitelist getRouteDestinationForPreferredPaymentService()Ljava/lang/String;
    .locals 2

    .line 822
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda5;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 824
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_2

    .line 825
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v1

    if-nez v1, :cond_1

    .line 826
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 827
    const-string v1, "OffHost"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v1

    .line 826
    :goto_0
    return-object v1

    .line 829
    :cond_1
    const-string v1, "Host"

    return-object v1

    .line 831
    :cond_2
    return-object v1
.end method

.method public whitelist getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 433
    const-string v0, "payment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda11;-><init>()V

    .line 435
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 434
    invoke-static {v0, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 436
    .local v0, "paymentRegistered":Z
    if-eqz v0, :cond_0

    .line 437
    return v1

    .line 439
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 442
    .end local v0    # "paymentRegistered":Z
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 884
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda9;-><init>(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getServices(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 900
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda27;

    invoke-direct {v0, p2, p1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda27;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    .line 369
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 352
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda16;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 352
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isEuiccSupported()Z
    .locals 2

    .line 1107
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist overrideRoutingTable(Landroid/app/Activity;II)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "protocol"    # I
    .param p3, "technology"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1066
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "protocolRoute":Ljava/lang/String;
    invoke-static {p3}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "technologyRoute":Ljava/lang/String;
    new-instance v2, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0, v1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;-><init>(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/nfc/cardemulation/CardEmulation;->callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V

    .line 1077
    return-void

    .line 1067
    .end local v0    # "protocolRoute":Ljava/lang/String;
    .end local v1    # "technologyRoute":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist recoverRoutingTable(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1092
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda12;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V

    .line 1098
    return-void

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 581
    .local p3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 582
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda22;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)V

    .line 584
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 582
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist registerNfcEventCallback(Ljava/util/concurrent/Executor;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1550
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    return-void

    .line 1553
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1554
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1556
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda2;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V

    .line 1557
    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation;->linkToNfcDeath()V

    .line 1559
    :cond_1
    monitor-exit v0

    .line 1560
    return-void

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerPollingLoopFilterForService(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopFilter"    # Ljava/lang/String;
    .param p3, "autoTransact"    # Z

    .line 479
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->validatePollingLoopFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "pollingLoopFilterV":Ljava/lang/String;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, v0, p3}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda14;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 483
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 480
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist registerPollingLoopPatternFilterForService(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopPatternFilter"    # Ljava/lang/String;
    .param p3, "autoTransact"    # Z

    .line 527
    nop

    .line 528
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->validatePollingLoopPatternFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "pollingLoopPatternFilterV":Ljava/lang/String;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, v0, p3}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 533
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 529
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 710
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda28;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 712
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 710
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist removePollingLoopFilterForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopFilter"    # Ljava/lang/String;

    .line 497
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->validatePollingLoopFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "pollingLoopFilterV":Ljava/lang/String;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 500
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 498
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist removePollingLoopPatternFilterForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "pollingLoopPatternFilter"    # Ljava/lang/String;

    .line 552
    nop

    .line 553
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->validatePollingLoopPatternFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "pollingLoopPatternFilterV":Ljava/lang/String;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda21;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 556
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 554
    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public blacklist setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 876
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;-><init>(ILandroid/content/ComponentName;)V

    .line 877
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 876
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 867
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda1;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;)V

    .line 869
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 867
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist setDefaultNfcSubscriptionId(I)I
    .locals 2
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1183
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;-><init>(Landroid/nfc/cardemulation/CardEmulation;I)V

    .line 1186
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1183
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 858
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda23;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 860
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 858
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist setOffHostForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "offHostSecureElement"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 648
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 652
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getSupportedOffHostSecureElements()Ljava/util/List;

    move-result-object v2

    .line 653
    .local v2, "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "eSE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    :cond_1
    const-string v4, "SIM"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 655
    :cond_2
    return v1

    .line 658
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 659
    return v1

    .line 662
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 663
    const-string p2, "eSE1"

    goto :goto_0

    .line 664
    :cond_5
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 665
    const-string p2, "SIM1"

    .line 667
    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 668
    .local v3, "offHostSecureElementV":Ljava/lang/String;
    new-instance v4, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0, p1, v3}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda24;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 670
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 668
    invoke-static {v4, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 649
    .end local v2    # "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "offHostSecureElementV":Ljava/lang/String;
    :cond_7
    :goto_1
    return v1
.end method

.method public whitelist setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 746
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 749
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda10;-><init>(Landroid/content/ComponentName;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setServiceEnabledForCategoryOther(Landroid/content/ComponentName;IZ)I
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "status"    # Z

    .line 1007
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;

    invoke-direct {v0, p2, p1, p3}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;-><init>(ILandroid/content/ComponentName;Z)V

    .line 1009
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1007
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist setServiceEnabledForCategoryOther(Landroid/content/ComponentName;Z)I
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "status"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 990
    invoke-virtual {p0, p1, v0, p2}, Landroid/nfc/cardemulation/CardEmulation;->setServiceEnabledForCategoryOther(Landroid/content/ComponentName;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist setShouldDefaultToObserveModeForService(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 457
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda7;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Z)V

    .line 459
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 457
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist supportsAidPrefixRegistration()Z
    .locals 2

    .line 780
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda17;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterNfcEventCallback(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1572
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    return-void

    .line 1575
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1576
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mNfcEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1578
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda3;-><init>(Landroid/nfc/cardemulation/CardEmulation;)V

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V

    .line 1579
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_1

    .line 1580
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1581
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1584
    :cond_1
    monitor-exit v0

    .line 1585
    return-void

    .line 1584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unsetOffHostForService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 606
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda20;-><init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;)V

    .line 608
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 606
    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist unsetPreferredService(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 763
    if-eqz p1, :cond_0

    .line 766
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda18;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->callServiceReturn(Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
