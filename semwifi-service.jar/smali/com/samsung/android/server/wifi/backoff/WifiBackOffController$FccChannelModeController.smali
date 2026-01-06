.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FccChannelModeController"
.end annotation


# static fields
.field static final CHANNEL_BACKOFF_TYPE_DISABLE:I = -0x1

.field static final CHANNEL_BACKOFF_TYPE_ENABLE:I = 0x0

.field static final CHANNEL_BACKOFF_TYPE_ENABLE_EXCEPT_6G:I = 0x1

.field static final CHANNEL_BACKOFF_TYPE_UNKNOWN:I = -0x2

.field private static final SERVICE_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Fcc"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fccBackOffStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isBlockedFccBackoffChanges:Z

.field private final isWifi6ESupported:Z

.field private lastServiceState:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;


# direct methods
.method public static synthetic $r8$lambda$a0I2u1qJnEtV-OiUfo6Q7WP-O0I(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isWifi6ESupported:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;Z)V

    return-void
.end method

.method private checkAndSetupForNormal(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isAirplaneModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v0, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkNetworkCountryCodeAndSetup(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private checkAndSetupForWifiOnlyModel(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "SemWifiBackOff.Fcc"

    .line 2
    .line 3
    const-string v1, "wifi only model: set power reduction mode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isWifi6ESupported:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isAirplaneModeEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private checkNetworkCountryCodeAndSetup(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetNetworkCountryIso(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "service state is "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getServiceStateString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " telephony country iso: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "SemWifiBackOff.Fcc"

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private getChannelBackOffModeString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const-string p0, "unknown"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "wifi6e_only"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "enabled"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "disabled"

    .line 19
    .line 20
    return-object p0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eq p1, p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "STATE_EMERGENCY_ONLY"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string p0, "STATE_OUT_OF_SERVICE"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string p0, "STATE_IN_SERVICE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const-string p0, "SERVICE_STATE_UNKNOWN"

    .line 27
    .line 28
    return-object p0
.end method

.method private isAirplaneModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "airplane_mode_on"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    return v2
.end method

.method private synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    const-string v0, " - fccChannelMode("

    .line 2
    .line 3
    const-string v1, "): "

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getChannelBackOffModeString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const-string p0, " (blocked)"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, ""

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private setFccChannelModeEnabled(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "setFccChannelBackOff: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getChannelBackOffModeString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "SemWifiBackOff.Fcc"

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method checkAndSetup(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiBackOff.Fcc"

    .line 6
    .line 7
    const-string p1, "skip to check channel backoff state. (blocked by app)"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetupForWifiOnlyModel(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetupForNormal(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - serviceState: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getServiceStateString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method forceEnable(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "forceEnableFccChannelBackoff by app iface="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SemWifiBackOff.Fcc"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, -0x1

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method getFccBackOffStates(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method resetState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    .line 2
    .line 3
    return-void
.end method
