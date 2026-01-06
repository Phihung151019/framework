.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.super Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$CommandOperator;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandlerMessage;,
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final COVER_ATTACH_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

.field private static final DISCONNECTED:I = 0x0

.field private static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field private static final EXTRA_COVER_ATTACH:Ljava/lang/String; = "attach"

.field private static final EXTRA_REAL_COVER_TYPE:Ljava/lang/String; = "real_cover_type"

.field private static final GOS_INTENT:Ljava/lang/String; = "com.samsung.android.game.gos.action.TSP"

.field private static final POWER_STATE_OFF:I = 0x3

.field private static final POWER_STATE_OFF_ON:I = 0x4

.field private static final POWER_STATE_ON:I = 0x1

.field private static final POWER_STATE_ON_OFF:I = 0x2

.field private static final POWER_STATE_SHUTDOWN:I = -0x1

.field private static final REQ_TRUSTED_TOUCH_OFF_INTENT:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.REQ_TRUSTED_TOUCH_OFF"

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceManagerService"

.field private static final TUI_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.services.systemhelper"

.field private static final WIRELESS:I = 0x4

.field private static mainHandler:Landroid/os/Handler;

.field private static final spenCommands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aotEnabled:I

.field private bedtimeRunningState:I

.field private bodyDetection:I

.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

.field private commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

.field private final commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

.field private final context:Landroid/content/Context;

.field private currentChargingStatus:I

.field private currentChargingType:I

.field private currentFastResponse:Ljava/lang/String;

.field private currentFolded:Z

.field private currentGameMode:Ljava/lang/String;

.field private currentScanRate:Ljava/lang/String;

.field private final deviceDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
            "Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

.field private externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

.field private gloveMode:I

.field private final initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

.field private keepProxLpScanMode:I

.field private lazyBootCompleted:Z

.field private final mainHandlerThread:Landroid/os/HandlerThread;

.field private final motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

.field private final serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

.field private final settingHandler:Landroid/os/Handler;

.field private settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

.field private supportProxLpScanEnabled:Z

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

.field private final taasService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;

.field private wirelessChargingState:I

.field private wristDetectionDisabled:I


# direct methods
.method static bridge synthetic -$$Nest$fgetaotEnabled(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->aotEnabled:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbedtimeRunningState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bedtimeRunningState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbodyDetection(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bodyDetection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFastResponse(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFastResponse:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFolded(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceDisplayStates(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->deviceDisplayStates:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgloveMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialOperation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmotionHelper(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingObserver(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettaasService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->taasService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwirelessChargingState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wirelessChargingState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwristDetectionDisabled(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wristDetectionDisabled:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbedtimeRunningState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bedtimeRunningState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbodyDetection(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bodyDetection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentFastResponse(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFastResponse:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentFolded(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgloveMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeepProxLpScanMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlazyBootCompleted(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lazyBootCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwirelessChargingState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wirelessChargingState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwristDetectionDisabled(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wristDetectionDisabled:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCallbackWithRetries(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerCallbackWithRetries(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterExternalService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerExternalService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerRawdataService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterSettingObserver(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerSettingObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayStateToDevice(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayStateToDevice(ZIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmainHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    .line 1122
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->spenCommands:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    .line 81
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    .line 82
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->deviceDisplayStates:Ljava/util/HashMap;

    .line 87
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFastResponse:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingStatus:I

    .line 92
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentChargingType:I

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 94
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->gloveMode:I

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    .line 100
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    .line 101
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    .line 103
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wirelessChargingState:I

    .line 104
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bedtimeRunningState:I

    .line 105
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->aotEnabled:I

    .line 106
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bodyDetection:I

    .line 107
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wristDetectionDisabled:I

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lazyBootCompleted:Z

    .line 112
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$CommandOperator;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$CommandOperator;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService-IA;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    .line 456
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 618
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemInputMainHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandlerThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$SettingHandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    .line 130
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectHAL()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 131
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerCallbackWithRetries(I)I

    .line 133
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 134
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandOperator:Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;-><init>(Landroid/os/Handler;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;Lcom/samsung/android/hardware/secinputdev/SemInputCommandInterface;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerBroadcastReceiver()V

    .line 137
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    .line 138
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->taasService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;

    .line 140
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method private SendBroadcastToTUI()V
    .locals 5

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.hardware.secinputdev.REQ_TRUSTED_TOUCH_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lazyBootCompleted:Z

    const/4 v3, 0x1

    const-string v4, "SemInputDeviceManagerService"

    if-ne v2, v3, :cond_0

    .line 699
    const-string v2, "com.qualcomm.qti.services.systemhelper"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 701
    const-string v1, "SendBroadcastToTUI"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_0
    const-string v1, "Before lazyBoot complete"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_0
    return-void
.end method

.method private dumpEvents(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 848
    const-string v0, "\ndumping SemInputDeviceManager Events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 854
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 857
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 862
    return-void
.end method

.method private getCallerClassName(I)Ljava/lang/String;
    .locals 5
    .param p1, "stackIndex"    # I

    .line 1027
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1028
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 1030
    .local v1, "callerClassName":Ljava/lang/String;
    :try_start_0
    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1031
    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "classNameSplit":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    move-object v1, v3

    .line 1033
    const-string v3, "[$]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1034
    .end local v2    # "classNameSplit":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1035
    .local v2, "e":Ljava/lang/Exception;
    if-nez v1, :cond_0

    .line 1036
    const-string v1, ""

    .line 1039
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    if-eqz v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    .line 439
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 441
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 442
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 443
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 444
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_USER_SWITCHED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 446
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 448
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_GAME:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 451
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_COVER:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->broadcastReceiver:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 454
    :cond_2
    :goto_0
    return-void
.end method

.method public static registerCallbackForHalRecovery(I)V
    .locals 4
    .param p0, "msDelay"    # I

    .line 178
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->setRecoveryState(Z)V

    .line 180
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    :cond_0
    return-void
.end method

.method private registerCallbackWithRetries(I)I
    .locals 5
    .param p1, "retry"    # I

    .line 154
    const-string v0, "SemInputDeviceManagerService"

    const/4 v1, 0x1

    .local v1, "ii":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 155
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->registerCallback()I

    move-result v2

    if-ltz v2, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallbackWithRetries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallbackWithRetries "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "ii":I
    :cond_1
    const/16 v0, -0x9

    return v0
.end method

.method private registerExternalService()V
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->getSupportList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 601
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->get(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 602
    goto :goto_0

    .line 604
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    if-ne v2, v4, :cond_1

    .line 605
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportProxLpScanEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    .line 606
    iget-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    if-nez v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->put(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Z)V

    .line 608
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v3, "- SensorProxLpScanListenerWrapper NOT registered: not supported\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    goto :goto_0

    .line 612
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z

    move-result v2

    .line 613
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->put(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Z)V

    .line 614
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Ljava/lang/String;>;"
    .end local v2    # "ret":Z
    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    return-void
.end method

.method private registerRawdataService()V
    .locals 6

    .line 265
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_RAWDATA:Z

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    .local v0, "devid":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v5, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->registerRawdataService(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;I)V

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "devid":I
    :cond_2
    return-void
.end method

.method private registerSettingObserver()V
    .locals 5

    .line 276
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->registerDefault(Landroid/os/Handler;)V

    .line 284
    :cond_0
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v0, :cond_1

    .line 285
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->get(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportAot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->put(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v3, "- Setting AOT registered\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->get(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 294
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->initialOperation:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->put(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Z)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingObserver:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->settingHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    const-string v1, "- Setting Spen Mode registered\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_3
    return-void
.end method

.method private setDisplayOn(ZI)V
    .locals 4
    .param p1, "isEarly"    # Z
    .param p2, "displayId"    # I

    .line 801
    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    return-void

    .line 804
    :cond_0
    if-nez p1, :cond_2

    .line 805
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 806
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZZ)I

    .line 807
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZZ)I

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->restart(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V

    .line 811
    :cond_2
    return-void
.end method

.method private setDisplayStateToDevice(ZIII)V
    .locals 8
    .param p1, "isEarly"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 709
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AMOLED_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 710
    move v0, p2

    .local v0, "stateForDevice":I
    goto :goto_0

    .line 712
    .end local v0    # "stateForDevice":I
    :cond_0
    move v0, p3

    .line 715
    .restart local v0    # "stateForDevice":I
    :goto_0
    invoke-static {p4}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v1

    const-string v2, "SemInputDeviceManagerService"

    if-nez v1, :cond_1

    .line 716
    const/4 p4, 0x1

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayStateToDevice:display type("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is not defined, set to default tsp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->deviceDisplayStates:Ljava/util/HashMap;

    invoke-static {p4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;

    .line 722
    .local v1, "deviceDisplayState":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;
    if-nez v1, :cond_2

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 727
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v4, "EARLY: "

    goto :goto_1

    :cond_3
    const-string v4, "LATE: "

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I

    move-result v4

    .line 728
    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 729
    if-ne p2, p3, :cond_4

    const-string v4, ""

    goto :goto_2

    .line 730
    :cond_4
    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v4

    invoke-static {p3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " (%s,%s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I

    move-result v3

    if-ne v3, v0, :cond_5

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentDisplayIsEarly(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z

    move-result v3

    if-ne v3, p1, :cond_5

    .line 733
    const-string v3, "setDisplayStateToDevice: The same state&isEarly was called. Skip this"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 737
    :cond_5
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentDisplayIsEarly(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 738
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v0, :cond_7

    .line 739
    const-string v3, ")"

    const-string v6, "setDisplayStateToDevice: The same state was called. Skip this("

    if-eqz p1, :cond_6

    .line 740
    invoke-static {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 743
    :cond_6
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 744
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 749
    :cond_7
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 751
    :cond_8
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 753
    const/4 v2, 0x2

    if-ne p1, v5, :cond_b

    .line 754
    if-ne v0, v2, :cond_9

    .line 755
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V

    goto :goto_3

    .line 756
    :cond_9
    if-ne v0, v5, :cond_b

    .line 757
    sget-boolean v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AMOLED_DISPLAY:Z

    if-nez v3, :cond_a

    .line 758
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->SendBroadcastToTUI()V

    .line 760
    :cond_a
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V

    .line 761
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->pause(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V

    .line 765
    :cond_b
    :goto_3
    if-nez p1, :cond_c

    if-ne v0, v2, :cond_c

    .line 766
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v3, p4, v0, p1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZZ)I

    goto :goto_4

    .line 768
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-boolean v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->USE_CMDTHREAD:Z

    invoke-virtual {v3, p4, v0, p1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZZ)I

    .line 771
    :goto_4
    if-ne p4, v5, :cond_d

    if-ne v0, v5, :cond_d

    .line 772
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setMainDisplayOff(Z)V

    .line 774
    :cond_d
    if-ne v0, v2, :cond_e

    .line 775
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayOn(ZI)V

    .line 778
    :cond_e
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V

    .line 779
    if-nez p1, :cond_10

    .line 780
    if-ne v0, v2, :cond_f

    .line 781
    invoke-static {v1, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V

    goto :goto_5

    .line 782
    :cond_f
    if-ne v0, v5, :cond_10

    .line 783
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V

    .line 786
    :cond_10
    :goto_5
    return-void
.end method

.method private setMainDisplayOff(Z)V
    .locals 4
    .param p1, "isEarly"    # Z

    .line 789
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 790
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZZ)I

    goto :goto_0

    .line 792
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->supportProxLpScanEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    if-ltz v0, :cond_1

    .line 793
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "setMainDisplayOff: running keeping prox lp scan mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 795
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 798
    :cond_1
    :goto_0
    return-void
.end method

.method public static systemReady()V
    .locals 2

    .line 169
    const-string v0, "systemReady"

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_0
    const-string v0, "systemReady: mainHandler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void
.end method


# virtual methods
.method public activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I
    .locals 9
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "mode"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    .line 996
    .local v1, "devid":I
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    const-string v2, " is not allowed"

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 1000
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCallerClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    .local v4, "caller":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->deviceDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;

    .line 1010
    .local v6, "deviceDisplayState":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p2, v0, :cond_4

    invoke-static {v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1011
    invoke-static {v6, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {v0, p1, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->pause(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V

    move v3, p3

    goto :goto_2

    .line 1013
    :cond_4
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    if-ne p2, v0, :cond_6

    .line 1014
    invoke-static {v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->toInt()I

    move-result v2

    const/4 v5, 0x1

    move v3, p3

    .end local p3    # "state":Z
    .local v3, "state":Z
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZLjava/lang/String;Z)I

    .line 1016
    iget-object p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {p3, p1, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->restart(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V

    .line 1017
    invoke-static {v6, v7}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fputisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V

    .line 1018
    return v8

    .line 1014
    .end local v3    # "state":Z
    .restart local p3    # "state":Z
    :cond_5
    move v3, p3

    .end local p3    # "state":Z
    .restart local v3    # "state":Z
    goto :goto_2

    .line 1013
    .end local v3    # "state":Z
    .restart local p3    # "state":Z
    :cond_6
    move v3, p3

    .end local p3    # "state":Z
    .restart local v3    # "state":Z
    goto :goto_2

    .line 1008
    .end local v3    # "state":Z
    .end local v6    # "deviceDisplayState":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;
    .restart local p3    # "state":Z
    :cond_7
    move v3, p3

    .line 1023
    .end local p3    # "state":Z
    .restart local v3    # "state":Z
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->toInt()I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->activate(IIZLjava/lang/String;Z)I

    move-result p3

    return p3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 815
    if-nez p2, :cond_0

    .line 816
    return-void

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumping SemInputDeviceManagerService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_JDM_PROJECT:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " (JDM)"

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- hal version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- SUPPORT_RAWDATA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_RAWDATA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SUPPORT_TFLITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_TFLITE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- SUPPORT_PALMMUTE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_PALMMUTE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SUPPORT_AIVF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AIVF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SUPPORT_APD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_APD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- SUPPORT_AWD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AWD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", USE_CMDTHREAD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->USE_CMDTHREAD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->dump(Ljava/io/PrintWriter;)V

    .line 832
    :cond_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->taasService:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->dump(Ljava/io/PrintWriter;)V

    .line 835
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->dump(Ljava/io/PrintWriter;)V

    .line 839
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->dump(Ljava/io/PrintWriter;)V

    .line 840
    const-string v0, "end"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 844
    const-string v0, "end SemInputDeviceManagerService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getFromName(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->enableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCommandList(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getCommandList(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTSP()I
    .locals 1

    .line 865
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentFolded:Z

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x2

    return v0

    .line 867
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ENABLED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "result":Ljava/lang/String;
    const-string v1, "NG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    const/4 v1, -0x6

    return v1

    .line 975
    :cond_0
    const-string v1, "NA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    const/4 v1, -0x5

    return v1

    .line 978
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 979
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x7

    return v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 948
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 949
    :cond_1
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method public getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportDevice(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDevice(I)I

    move-result v0

    return v0
.end method

.method public getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getFromName(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->isEnableMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isKeyPressedByKeycode(I)Z
    .locals 1
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isKeyPressedByKeycode(I)Z

    move-result v0

    return v0
.end method

.method public isSupportMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)Z
    .locals 6
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 916
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v0

    .line 917
    .local v0, "feature":I
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getTspSupportFeature(I)I

    move-result v2

    .line 918
    .local v2, "featureSub":I
    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->isFeatureEnabled(I)Z

    move-result v3

    const-string v4, "isSupportMotion: "

    const-string v5, "SemInputDeviceManagerService"

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v1, 0x0

    return v1

    .line 919
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v1
.end method

.method public isSupportMotion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 912
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getFromName(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->isSupportMotion(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;)Z

    move-result v0

    return v0
.end method

.method public registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "receiver"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 423
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 424
    return v0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    if-nez v1, :cond_1

    .line 428
    return v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalBroadcastHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerCallback: not supported anymore. Please use registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->registerListener(Landroid/os/IBinder;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 592
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->externalEventHandler:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z

    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method public runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    if-ne p1, v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->runCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->runCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;[I)I
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRawdataTsp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    array-length v2, p2

    invoke-interface {v0, v1, p2, v2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->injectRawdata(I[II)I

    move-result v0

    return v0
.end method

.method public setAodEnable(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouchAndSpen(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAodRect(IIII)I
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "mode":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v2

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOD_RECT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setAotEnable(I)I
    .locals 5
    .param p1, "value"    # I

    .line 1071
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, -0x1

    return v0

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAotEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->aotEnabled:I

    .line 1078
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bedtimeRunningState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wirelessChargingState:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->AOT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1079
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip setting: bedtime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->bedtimeRunningState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " wc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->wirelessChargingState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public setCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1129
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Device:[I

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1141
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1139
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1131
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1134
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->spenCommands:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouchAndSpen(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1127
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFodEnable(IIII)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I
    .param p4, "control"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodLpMode(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD_LP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodRect(IIII)I
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "mode":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getCurrentTSP()I

    move-result v2

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->FOD_RECT:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 943
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 3
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    invoke-virtual {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->isExternalWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingletapEnable(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SINGLETAP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenEnabled(IIZ)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidSpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    const/4 v0, -0x2

    return v0

    .line 1119
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public setSyncChanged(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->SYNC_CHANGED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTemperature(I)I
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->TEMPERATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setPropertyAllTouch(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTspEnabled(IIZ)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1044
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->isDevidTsp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    const/4 v0, -0x2

    return v0

    .line 1047
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 890
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerCallback: not supported anymore. Please use unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->motionHelper:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->unregisterListener(Landroid/os/IBinder;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
