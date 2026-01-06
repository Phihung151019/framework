.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemHostapdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$EdvNYlfw53aRDrnf12_5yGm4x3o(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->lambda$sehHostapdCallbackEvent$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$sehHostapdCallbackEvent$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->terminate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "f40f81e9a2993c8dec149d5a4331e91ed53eef3d"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public sehHostapdCallbackEvent(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetMHSDBG(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "sehHostapdCallbackEvent=  "

    .line 8
    .line 9
    const-string v2, "SemHostapdHalAidlImpl"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, " isRegisteredVar:"

    .line 14
    .line 15
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->hostapdCallbackEvent(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string v0, "FAILED_ADD_ACCESSPOINT"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const-string v0, "REMOVE_ACCESSPOINT_FAILED"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const-string v0, "DISABLED"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void
.end method
