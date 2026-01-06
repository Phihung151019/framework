.class public Lcom/android/server/ssrm/fgapps/TopAppManager;
.super Ljava/lang/Object;
.source "TopAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
    }
.end annotation


# static fields
.field private static final GROUP_ANIMATION:I = 0x4

.field public static final NONE:I = -0x1

.field private static final TASK_NAME_ANIMATION:Ljava/lang/String; = "ANIMATION"


# instance fields
.field private launcherPid:I

.field private mAnimationThreadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private mProcessThreadForTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mProcessThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTopAppProcessSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimationThreadSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessThreadForTypeMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadForTypeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "cfms"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadForTypeMap:Ljava/util/HashMap;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    .line 36
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 39
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 40
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;-><init>(Lcom/android/server/ssrm/fgapps/TopAppManager;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addProcessThread(IILjava/lang/String;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 116
    if-gez p2, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "splitNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_1
    move-object v1, p3

    .line 122
    .local v1, "originName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    return-void

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 128
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_3

    .line 129
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 130
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    if-eqz v3, :cond_4

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit v2

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public addProcessThreadWithDuplicatedName(IILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 192
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    const/4 v0, 0x1

    .line 199
    .local v0, "idx":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 204
    return-void

    .line 194
    .end local v0    # "idx":I
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 195
    return-void

    .line 192
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addThreadToType(III)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "type"    # I

    .line 157
    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    if-gez p3, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    monitor-exit v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadForTypeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadForTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 172
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_2

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 176
    :cond_2
    const-string v2, "ANIMATION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 177
    .local v2, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-nez v2, :cond_3

    .line 178
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object v2, v3

    .line 180
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v3, "ANIMATION"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadForTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    nop

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/Integer;>;>;"
    .end local v2    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 186
    :goto_0
    return-void

    .line 158
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getLauncherPid()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    return v0
.end method

.method public getProcessThread(ILjava/lang/String;)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 66
    .local v1, "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v0, -0x1

    if-nez v1, :cond_0

    .line 68
    return v0

    .line 71
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 72
    .local v2, "threadHashResult":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 73
    return v0

    .line 76
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 66
    .end local v1    # "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "threadHashResult":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getProcessThread(I)Ljava/util/Vector;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 83
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_7

    if-gez p1, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 90
    .local v1, "skipNameChecking":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 92
    .local v3, "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-nez v3, :cond_2

    .line 95
    return-object v0

    .line 98
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 99
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 100
    goto :goto_1

    .line 102
    :cond_3
    if-nez v1, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    goto :goto_1

    .line 106
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 107
    .local v5, "threadId":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 108
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "threadId":Ljava/lang/Integer;
    :cond_5
    goto :goto_1

    .line 112
    :cond_6
    return-object v0

    .line 92
    .end local v3    # "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 84
    .end local v1    # "skipNameChecking":Z
    :cond_7
    :goto_2
    return-object v0
.end method

.method public getThreadForType(I)Ljava/util/Vector;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 143
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    if-nez v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mAnimationThreadSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v1

    .line 153
    return-object v0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 144
    :cond_2
    :goto_1
    return-object v0
.end method

.method public setLauncherPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 50
    iput p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    .line 51
    return-void
.end method
