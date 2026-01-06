.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "handleMessage: 1"

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "com.samsung.android.mcf.autohotspot"

    .line 27
    .line 28
    const-string v2, "com.samsung.android.mcf.autohotspot.SemAutohotspotMcfService"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/ServiceConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfBinded(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "Bind SemAutohotspotMcfService Succeeded"

    .line 63
    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfBinded(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "Bind SemAutohotspotMcfService failed"

    .line 83
    .line 84
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 88
    .line 89
    iget v1, p1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 90
    .line 91
    sub-int/2addr v1, v0

    .line 92
    iput v1, p1, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 93
    .line 94
    if-lez v1, :cond_2

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmyHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-wide/16 v1, 0x2710

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 110
    .line 111
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string v0, "SemAutohotspotMcfService Intent error"

    .line 116
    .line 117
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_1
    return-void
.end method
