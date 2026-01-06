.class public final Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;
.super Ljava/lang/Object;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionInfo"
.end annotation


# instance fields
.field private final mActionType:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvider:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

.field private final mServiceType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;ILcom/samsung/android/hardware/context/provider/Provider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .param p2, "actionType"    # I
    .param p3, "provider"    # Lcom/samsung/android/hardware/context/provider/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 718
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mActionType:I

    .line 719
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mProvider:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

    .line 720
    const/16 v0, 0x1b

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mServiceType:I

    .line 721
    return-void
.end method


# virtual methods
.method addListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 724
    if-nez p1, :cond_0

    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mProvider:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mActionType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->addAction(I)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_2
    return-void
.end method

.method removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 734
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mProvider:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->mActionType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;->removeAction(I)V

    .line 740
    :cond_0
    return-void
.end method
