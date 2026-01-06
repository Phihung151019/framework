.class Lcom/android/internal/telephony/MockModem$MockModemConnection;
.super Ljava/lang/Object;
.source "MockModem.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MockModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockModemConnection"
.end annotation


# instance fields
.field private blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/MockModem;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/MockModem;I)V
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

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p2, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->mService:I

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fgetmTag(Lcom/android/internal/telephony/MockModem;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IRadio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    iget v2, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->mService:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$mgetModuleName(Lcom/android/internal/telephony/MockModem;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  - onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget p1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->mService:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmModemBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmSimBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmMessagingBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmDataBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmNetworkBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmVoiceBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmImsBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmConfigBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fgetmTag(Lcom/android/internal/telephony/MockModem;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IRadio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    iget v2, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->mService:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MockModem;->-$$Nest$mgetModuleName(Lcom/android/internal/telephony/MockModem;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  - onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget p1, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->mService:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmModemBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmSimBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmMessagingBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmDataBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmNetworkBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmVoiceBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmImsBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    return-void

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/MockModem$MockModemConnection;->this$0:Lcom/android/internal/telephony/MockModem;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/MockModem;->-$$Nest$fputmConfigBinder(Lcom/android/internal/telephony/MockModem;Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method
