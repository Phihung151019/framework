.class Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;
.super Ljava/lang/Object;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerManager"
.end annotation


# instance fields
.field private final mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/samsung/android/hardware/context/SemContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/hardware/context/SemContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1181
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1182
    return-void
.end method

.method private getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextService$Listener;",
            ">;"
        }
    .end annotation

    .line 1314
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1315
    .local v0, "listenerList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1316
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1317
    .local v3, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v3, :cond_0

    .line 1318
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_0
    goto :goto_0

    .line 1321
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1322
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Handler;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1323
    .restart local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v3, :cond_2

    .line 1324
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Handler;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_2
    goto :goto_1

    .line 1327
    :cond_3
    return-object v0
.end method

.method private getListenerSize()I
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method get(Landroid/os/Handler;)Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    return-object v0
.end method

.method get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    return-object v0
.end method

.method getInfo()Ljava/lang/String;
    .locals 12

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1251
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getListenerSize()I

    move-result v1

    .line 1252
    .local v1, "listener_count":I
    const-string v2, "===== SemContext Current Service List =====\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v2, "listener count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " Service : "

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1255
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1256
    .local v6, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v6, :cond_1

    .line 1257
    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1258
    .local v8, "serviceType":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v9}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 1260
    .local v9, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v9, :cond_0

    .line 1261
    invoke-virtual {v9}, Lcom/samsung/android/hardware/context/provider/Provider;->getLastEvent()Ljava/lang/String;

    move-result-object v10

    .line 1262
    .local v10, "result":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    .end local v8    # "serviceType":I
    .end local v9    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v10    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 1266
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    .end local v6    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_1
    goto :goto_0

    .line 1267
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1268
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Handler;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1269
    .restart local v6    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v6, :cond_4

    .line 1270
    const-string v7, "Client Listener ID :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1271
    const-string v8, "com.samsung.android.gesture.motionrecognitionservice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string v7, "Service Listener ID : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1274
    .restart local v8    # "serviceType":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v9}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 1276
    .restart local v9    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v9, :cond_3

    .line 1277
    invoke-virtual {v9}, Lcom/samsung/android/hardware/context/provider/Provider;->getLastEvent()Ljava/lang/String;

    move-result-object v10

    .line 1278
    .restart local v10    # "result":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .end local v8    # "serviceType":I
    .end local v9    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v10    # "result":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 1282
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Handler;Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    .end local v6    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_4
    goto :goto_2

    .line 1283
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getServiceList()Ljava/lang/String;
    .locals 7

    .line 1226
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 1227
    .local v0, "listenerList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1228
    .local v1, "serviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1230
    .local v3, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1231
    .local v5, "serviceType":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v5    # "serviceType":I
    :cond_0
    goto :goto_1

    .line 1234
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_1
    goto :goto_0

    .line 1236
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1237
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 1240
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1241
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_3

    .line 1242
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1245
    .end local v4    # "i":I
    :cond_4
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method notifyListeners(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "serviceType"    # I

    .line 1290
    const-string v0, ""

    .line 1291
    .local v0, "client":Ljava/lang/String;
    const-string v1, "SemContextService"

    if-nez p1, :cond_0

    .line 1292
    const-string v0, "com.samsung.android.gesture.motionrecognitionservice"

    move-object v6, v0

    goto :goto_0

    .line 1294
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmListenerManager(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v2

    .line 1295
    .local v2, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v2, :cond_1

    .line 1296
    const-string v3, "    .notifyListeners() : This listener was not registered "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void

    .line 1299
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmPackageName(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1302
    .end local v0    # "client":Ljava/lang/String;
    .end local v2    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .local v6, "client":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getListenerSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", client= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v0, "registerCallback"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    iget-object v3, v0, Lcom/samsung/android/hardware/context/SemContextService;->mPrevRegistrations:Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move v5, p3

    .end local p3    # "serviceType":I
    .local v5, "serviceType":I
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->addRegistHistory(ZILjava/lang/String;J)V

    goto :goto_1

    .line 1306
    .end local v5    # "serviceType":I
    .restart local p3    # "serviceType":I
    :cond_2
    move v5, p3

    .end local p3    # "serviceType":I
    .restart local v5    # "serviceType":I
    const-string p3, "unregisterCallback"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1307
    iget-object p3, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    iget-object v3, p3, Lcom/samsung/android/hardware/context/SemContextService;->mPrevRegistrations:Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->addRegistHistory(ZILjava/lang/String;J)V

    goto :goto_1

    .line 1309
    :cond_3
    const-string p3, "Nothing to do"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :goto_1
    return-void
.end method

.method put(Landroid/os/Handler;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1197
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    return-void
.end method

.method put(Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-void
.end method

.method remove(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mHandlerListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    return-void
.end method

.method remove(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->mBinderListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    return-void
.end method

.method showListenersList()V
    .locals 8

    .line 1212
    const-string v0, "===== SemContext Service List ====="

    const-string v1, "SemContextService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 1214
    .local v0, "listenerList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/hardware/context/SemContextService$Listener;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 1215
    .local v3, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1216
    .local v5, "serviceType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Service : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1217
    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1216
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v5    # "serviceType":I
    goto :goto_1

    .line 1219
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_0
    goto :goto_0

    .line 1220
    :cond_1
    return-void
.end method
