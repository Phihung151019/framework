.class public final Lcom/samsung/android/hardware/context/SemContextService$Listener;
.super Ljava/lang/Object;
.source "SemContextService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field protected mExerciseMode:I

.field private mPackageName:Ljava/lang/String;

.field private final mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;

.field private final uid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mServices:Ljava/util/Set;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1055
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    .line 1057
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mServices:Ljava/util/Set;

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->uid:I

    .line 1059
    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mPackageName:Ljava/lang/String;

    .line 1060
    return-void
.end method


# virtual methods
.method addServiceLocked(I)V
    .locals 2
    .param p1, "service"    # I

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mServices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1134
    return-void
.end method

.method public binderDied()V
    .locals 10

    .line 1069
    const-string v0, "unlock : binderDied"

    const-string v1, "lock : binderDied"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmMutex(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1072
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1073
    .local v1, "serviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1074
    .local v4, "serviceType":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1075
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    .end local v4    # "serviceType":I
    :cond_0
    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1078
    .restart local v4    # "serviceType":I
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmServiceMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 1079
    .local v6, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-eqz v6, :cond_5

    .line 1081
    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 1082
    iget v8, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mExerciseMode:I

    if-lez v8, :cond_2

    .line 1083
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v8}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 1084
    .local v8, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v8, :cond_2

    .line 1085
    new-instance v9, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v9, v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    .line 1086
    .local v9, "attribute":Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;
    invoke-virtual {v8, v4, v9}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 1090
    .end local v8    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v9    # "attribute":Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;
    :cond_2
    if-eq v4, v7, :cond_4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_4

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 1096
    :cond_3
    invoke-virtual {v6, p0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    goto :goto_3

    .line 1094
    :cond_4
    :goto_2
    invoke-virtual {v6, p0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->binderDiedLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 1098
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener.binderDied() : listener = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", service = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1099
    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", used = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextService$Service;->-$$Nest$fgetmListeners(Lcom/samsung/android/hardware/context/SemContextService$Service;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    .line 1100
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1098
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v4    # "serviceType":I
    .end local v6    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    :cond_5
    goto/16 :goto_1

    .line 1103
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_7

    .line 1104
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1105
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmListenerManager(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->remove(Landroid/os/IBinder;)V

    .line 1107
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmListenerManager(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->showListenersList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    .end local v1    # "serviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmMutex(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1110
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    nop

    .line 1112
    return-void

    .line 1109
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmMutex(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1110
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    throw v1
.end method

.method public callback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextCallback;

    move-result-object v0

    .line 1123
    .local v0, "cb":Lcom/samsung/android/hardware/context/ISemContextCallback;
    if-eqz v0, :cond_0

    .line 1124
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/context/ISemContextCallback;->semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    .end local v0    # "cb":Lcom/samsung/android/hardware/context/ISemContextCallback;
    :cond_0
    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemContextService"

    const-string v2, "Listener.callback() : Exception error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method removeServiceLocked(I)V
    .locals 2
    .param p1, "service"    # I

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mServices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method
