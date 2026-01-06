.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2153
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2156
    const-string v0, "ServiceBindHelper"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$msetServiceStatus(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)V

    .line 2160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fgetmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2161
    const-string v0, "ServiceBindHelper"

    const-string v1, "mSamsungInternalService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fgetmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getRevision()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmApiRevision(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    :goto_0
    goto :goto_1

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceBindHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: getRevision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    monitor-enter v0

    .line 2169
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2170
    monitor-exit v0

    .line 2171
    return-void

    .line 2170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2175
    const-string v0, "ServiceBindHelper"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$msetServiceStatus(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V

    .line 2177
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)V

    .line 2178
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    monitor-enter v0

    .line 2179
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2180
    monitor-exit v0

    .line 2181
    return-void

    .line 2180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
