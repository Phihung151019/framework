.class Lcom/samsung/android/hardware/context/SemContextService$2;
.super Ljava/lang/Object;
.source "SemContextService.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/provider/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$2;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventChanged(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "serviceType"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 193
    if-nez p2, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$2;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 195
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$2;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmServiceMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 196
    .local v1, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService$Service;->-$$Nest$fgetmListeners(Lcom/samsung/android/hardware/context/SemContextService$Service;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 198
    const/16 v2, 0x34

    if-eq p1, v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$2;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fputmSensorHubLastEventTime(Lcom/samsung/android/hardware/context/SemContextService;J)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$2;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmSensorHubLastEventTime(Lcom/samsung/android/hardware/context/SemContextService;)J

    move-result-wide v2

    const-string v4, "SensorHubLastEventTime"

    invoke-virtual {p2, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    :goto_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/provider/Provider;->parse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 204
    if-eqz p2, :cond_3

    .line 205
    invoke-virtual {v1, p2}, Lcom/samsung/android/hardware/context/SemContextService$Service;->updateContext(Landroid/os/Bundle;)V

    .line 207
    :cond_3
    return-void

    .line 196
    :cond_4
    :goto_1
    return-void
.end method
