.class Lcom/samsung/android/server/wifi/wcm/IccManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/icc/IIccTrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/intelligence/icc/IIccTrService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/app/ActivityManager;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/app/ActivityManager;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 44
    .line 45
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "com.samsung.android.wifi.intelligence:iccTrService"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 56
    .line 57
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmTrServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 64
    .line 65
    const-string v0, "training service connected. pid: %d"

    .line 66
    .line 67
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "%s/%d"

    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmDataElement(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 103
    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-interface {p1, p2}, Lcom/samsung/android/wifi/intelligence/icc/IIccTrService;->trainKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 117
    .line 118
    const-string p1, "Tr service is not connected"

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$3;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    const-string p1, "Icc tr service disconnected.."

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
