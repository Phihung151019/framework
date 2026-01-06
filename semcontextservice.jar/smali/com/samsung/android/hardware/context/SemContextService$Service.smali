.class public final Lcom/samsung/android/hardware/context/SemContextService$Service;
.super Ljava/lang/Object;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Service"
.end annotation


# instance fields
.field private mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

.field private mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private mVersion:I

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/samsung/android/hardware/context/SemContextService$Service;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .param p2, "Service"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    .line 747
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 751
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    .line 753
    return-void
.end method

.method private isPossibleToRegisterOrUnregister()Z
    .locals 2

    .line 1010
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$misRegistered(Lcom/samsung/android/hardware/context/SemContextService;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;Lcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 11
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 760
    if-nez p1, :cond_0

    return-void

    .line 761
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v1, 0x1b

    const-string v2, "Service.addListenerLocked() : The lastEventInfo is null!"

    const/4 v3, 0x4

    const-string v4, "SemContextService"

    if-ne v0, v1, :cond_9

    .line 762
    if-nez p2, :cond_1

    .line 763
    const-string v0, "Service.addListenerLocked() : The attribute is null!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 766
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 767
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 768
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 769
    const-string v1, "Service.addListenerLocked() : The bundle is null!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 772
    :cond_2
    const-string v1, "activity_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 773
    .local v1, "actions":[I
    if-nez v1, :cond_3

    .line 774
    const-string v2, "Service.addListenerLocked() : The array of actions is null!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void

    .line 777
    :cond_3
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget v7, v1, v6

    .line 778
    .local v7, "action":I
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v8}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmActionMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;

    .line 779
    .local v8, "actionInfo":Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;
    if-eqz v8, :cond_4

    .line 780
    invoke-virtual {v8, p1}, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->addListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 781
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v9}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmActionMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .end local v7    # "action":I
    .end local v8    # "actionInfo":Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 784
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 785
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_6
    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContext;->getReportingMode(I)I

    move-result v5

    if-ne v5, v3, :cond_8

    .line 788
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-eqz v3, :cond_7

    .line 789
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->-$$Nest$msendEvent(Lcom/samsung/android/hardware/context/SemContextService$EventInfo;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    goto :goto_1

    .line 791
    :cond_7
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "actions":[I
    :cond_8
    :goto_1
    goto/16 :goto_4

    .line 795
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 796
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v0, :cond_a

    .line 797
    return-void

    .line 798
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_10

    .line 799
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_e

    .line 802
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$misFreeFallAlwaysOn(Lcom/samsung/android/hardware/context/SemContextService;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 803
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->add()V

    .line 804
    if-eqz p2, :cond_d

    .line 805
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 806
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    goto :goto_2

    .line 810
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->isPossibleToRegisterOrUnregister()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 811
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->add()V

    .line 812
    if-eqz p2, :cond_c

    .line 813
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 814
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 817
    :cond_c
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    if-ne v1, v5, :cond_d

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    .line 818
    const/16 v2, 0x37

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$misRegistered(Lcom/samsung/android/hardware/context/SemContextService;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 819
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 821
    .local v1, "provider_ffd":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v1, :cond_d

    .line 822
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->add()V

    .line 825
    .end local v1    # "provider_ffd":Lcom/samsung/android/hardware/context/provider/Provider;
    :cond_d
    :goto_2
    return-void

    .line 827
    :cond_e
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContext;->getReportingMode(I)I

    move-result v1

    if-ne v1, v3, :cond_10

    .line 828
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-eqz v1, :cond_f

    .line 829
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->-$$Nest$msendEvent(Lcom/samsung/android/hardware/context/SemContextService$EventInfo;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    goto :goto_3

    .line 831
    :cond_f
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_10
    :goto_3
    if-eqz p2, :cond_12

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    if-eq v1, v6, :cond_11

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    if-ne v1, v5, :cond_12

    .line 837
    :cond_11
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 838
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 841
    .end local v0    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    :cond_12
    :goto_4
    return-void
.end method

.method binderDiedLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 899
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->removeServiceLocked(I)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service.removeListenerLocked() : listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    .line 903
    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", used = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 904
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    const-string v1, "SemContextService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 908
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v0, :cond_1

    return-void

    .line 909
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->onBinderDied()V

    .line 910
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->handleDiedBinder()V

    .line 912
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-eqz v1, :cond_2

    .line 913
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 916
    .end local v0    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    :cond_2
    return-void
.end method

.method getAttribute()Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    return-object v0
.end method

.method getProperty()Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 756
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    return v0
.end method

.method isListenerEmpty()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method recordLastContext(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 919
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;-><init>(Lcom/samsung/android/hardware/context/SemContextService;Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    goto :goto_0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 924
    :goto_0
    return-void
.end method

.method removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 844
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service.removeListenerLocked() : listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    .line 848
    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", used = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 849
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    const-string v1, "SemContextService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 851
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mAttribute:Lcom/samsung/android/hardware/context/SemContextAttribute;

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 852
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 853
    const-string v2, "Service.removeListenerLocked() : The bundle is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 856
    :cond_1
    const-string v1, "activity_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 857
    .local v1, "actions":[I
    if-eqz v1, :cond_3

    .line 858
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmActionMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 859
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmActionMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;

    .line 860
    .local v4, "actionInfo":Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->-$$Nest$fgetmListeners(Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 861
    invoke-virtual {v4, p1}, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;->removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 858
    .end local v4    # "actionInfo":Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 866
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-eqz v2, :cond_4

    .line 867
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 870
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "actions":[I
    :cond_4
    goto :goto_2

    .line 871
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 872
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v0, :cond_6

    .line 873
    return-void

    .line 874
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 876
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$misFreeFallAlwaysOn(Lcom/samsung/android/hardware/context/SemContextService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 877
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->remove()V

    goto :goto_1

    .line 879
    :cond_7
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    .line 880
    const/16 v2, 0x37

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$misRegistered(Lcom/samsung/android/hardware/context/SemContextService;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 881
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 883
    .local v1, "provider_ffd":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v1, :cond_8

    .line 884
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->remove()V

    .line 887
    .end local v1    # "provider_ffd":Lcom/samsung/android/hardware/context/provider/Provider;
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->isPossibleToRegisterOrUnregister()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 888
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/Provider;->remove()V

    .line 891
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    if-eqz v1, :cond_a

    .line 892
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 896
    .end local v0    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    :cond_a
    :goto_2
    return-void
.end method

.method sendEventToListeners(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 968
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 969
    .local v1, "l":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->callback(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 972
    .end local v1    # "l":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_0
    goto :goto_0

    .line 973
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContext;->getReportingMode(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 974
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextService$Service;->recordLastContext(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 976
    :cond_2
    return-void
.end method

.method setReferenceData(I[B)Z
    .locals 7
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 979
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 980
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 981
    :cond_0
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 984
    :cond_1
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 985
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    const-string v3, "SemContextService"

    if-nez v2, :cond_2

    .line 986
    const-string v2, "Last Hall Sensor Event isn\'t existed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return v1

    .line 989
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mLastEventInfo:Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->getEvent()Lcom/samsung/android/hardware/context/SemContextEvent;

    move-result-object v2

    .line 990
    .local v2, "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextEvent;->getHallSensorContext()Lcom/samsung/android/hardware/context/SemContextHallSensor;

    move-result-object v4

    .line 991
    .local v4, "hallSensor":Lcom/samsung/android/hardware/context/SemContextHallSensor;
    const-string v5, "Hall Sensor Type"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextHallSensor;->getType()I

    move-result v5

    aget-byte v6, p2, v1

    if-ne v5, v6, :cond_3

    .line 993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status is matched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v1, p2, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x1

    return v1

    .line 997
    .end local v2    # "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    .end local v4    # "hallSensor":Lcom/samsung/android/hardware/context/SemContextHallSensor;
    :cond_3
    return v1

    .line 983
    :cond_4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hardware/context/provider/Provider;->setReferenceData(I[B)Z

    move-result v1

    return v1
.end method

.method declared-synchronized updateContext(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 927
    :try_start_0
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEvent;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEvent;-><init>()V

    .line 928
    .local v0, "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->setContextEvent(ILandroid/os/Bundle;)V

    .line 929
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v2, 0x1b

    const/16 v3, 0x7f

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 939
    :cond_0
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 940
    const-string v1, "ActivityType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 941
    .local v1, "activities":[I
    const-string v2, "Accuracy"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 943
    .local v2, "accuracies":[I
    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 948
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 949
    aget v5, v1, v4

    if-ne v5, v3, :cond_2

    .line 950
    aget v3, v2, v4

    iput v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    .line 951
    const-string v3, "SemContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service.updateContext() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activity version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    monitor-exit p0

    return-void

    .line 948
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextService$Service;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 944
    .end local v4    # "i":I
    :cond_3
    :goto_1
    :try_start_1
    const-string v3, "SemContextService"

    const-string v4, "Service.updateContext() : Arrays are null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    .line 933
    .end local v1    # "activities":[I
    .end local v2    # "accuracies":[I
    :cond_4
    :goto_2
    :try_start_2
    const-string v1, "ActivityType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 935
    const-string v1, "Accuracy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    .line 936
    const-string v1, "SemContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.updateContext() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activity version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    monitor-exit p0

    return-void

    .line 956
    :cond_5
    :try_start_3
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    if-eqz v1, :cond_6

    .line 957
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mVersion:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextEvent;->setServiceVersion(I)V

    .line 959
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 960
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 961
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 963
    const-string v2, "SemContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service.updateContext() : service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextService$Service;->mType:I

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    monitor-exit p0

    return-void

    .line 926
    .end local v0    # "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p1    # "context":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
