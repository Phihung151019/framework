.class public Lcom/android/server/ssrm/common/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;,
        Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mexecutePendingBroadcasts(Lcom/android/server/ssrm/common/LocalBroadcastManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;-><init>(Lcom/android/server/ssrm/common/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 7

    .line 244
    nop

    :goto_0
    const/4 v0, 0x0

    .line 245
    .local v0, "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, "N":I
    if-gtz v2, :cond_0

    .line 248
    monitor-exit v1

    return-void

    .line 250
    :cond_0
    new-array v3, v2, [Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;

    move-object v0, v3

    .line 251
    iget-object v3, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 255
    aget-object v2, v0, v1

    .line 256
    .local v2, "br":Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 257
    iget-object v4, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    iget-object v4, v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    .end local v2    # "br":Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    .end local v1    # "i":I
    :cond_2
    goto :goto_0

    .line 253
    .restart local v0    # "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/common/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    .line 77
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 105
    :try_start_0
    new-instance v1, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 106
    .local v1, "entry":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 107
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 109
    iget-object v4, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 113
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 115
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_1

    .line 116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 117
    iget-object v7, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    nop

    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "entry":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .line 169
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 170
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 171
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 174
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 176
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 177
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "debug":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resolving type "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " scheme "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " of intent "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    iget-object v4, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v13, v4

    .line 182
    .local v13, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v13, :cond_d

    .line 183
    if-eqz v0, :cond_2

    const-string v4, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Action list: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const/4 v4, 0x0

    .line 185
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    move-object v14, v4

    move v15, v10

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v15, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_a

    .line 186
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    .line 187
    .local v4, "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    if-eqz v0, :cond_3

    const-string v10, "LocalBroadcastManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Matching against filter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    iget-boolean v10, v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v10, :cond_5

    .line 189
    if-eqz v0, :cond_4

    .line 190
    const-string v10, "LocalBroadcastManager"

    const-string v11, "  Filter\'s target already added"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v0

    goto/16 :goto_4

    .line 189
    :cond_4
    move/from16 v18, v0

    goto/16 :goto_4

    .line 194
    :cond_5
    move-object v10, v4

    .end local v4    # "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .local v10, "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    iget-object v4, v10, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object v11, v10

    .end local v10    # "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .local v11, "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    const-string v10, "LocalBroadcastManager"

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 196
    .local v4, "match":I
    if-ltz v4, :cond_8

    .line 197
    if-eqz v0, :cond_6

    const-string v10, "LocalBroadcastManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "debug":Z
    .local v18, "debug":Z
    const-string v0, "  Filter matched!  match=0x"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v18    # "debug":Z
    .restart local v0    # "debug":Z
    :cond_6
    move/from16 v18, v0

    .line 199
    .end local v0    # "debug":Z
    .restart local v18    # "debug":Z
    :goto_2
    if-nez v14, :cond_7

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 202
    :cond_7
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_4

    .line 205
    .end local v18    # "debug":Z
    .restart local v0    # "debug":Z
    :cond_8
    move/from16 v18, v0

    .end local v0    # "debug":Z
    .restart local v18    # "debug":Z
    if-eqz v18, :cond_9

    .line 207
    packed-switch v4, :pswitch_data_0

    .line 212
    const-string v0, "unknown reason"

    goto :goto_3

    .line 211
    :pswitch_0
    const-string v0, "type"

    .local v0, "reason":Ljava/lang/String;
    goto :goto_3

    .line 210
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v0, "data"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 208
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v0, "action"

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 209
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v0, "category"

    .restart local v0    # "reason":Ljava/lang/String;
    nop

    .line 214
    :goto_3
    const-string v10, "LocalBroadcastManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v4

    .end local v4    # "match":I
    .local v19, "match":I
    const-string v4, "  Filter did not match: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 205
    .end local v0    # "reason":Ljava/lang/String;
    .end local v19    # "match":I
    .restart local v4    # "match":I
    :cond_9
    move/from16 v19, v4

    .line 185
    .end local v4    # "match":I
    .end local v11    # "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    goto/16 :goto_1

    .end local v18    # "debug":Z
    .local v0, "debug":Z
    :cond_a
    move/from16 v18, v0

    .line 218
    .end local v0    # "debug":Z
    .end local v15    # "i":I
    .restart local v18    # "debug":Z
    if-eqz v14, :cond_e

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 220
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 222
    .end local v0    # "i":I
    :cond_b
    iget-object v0, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v4, v2, v14}, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 224
    iget-object v0, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    :cond_c
    monitor-exit v3

    const/16 v17, 0x1

    return v17

    .line 182
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v18    # "debug":Z
    .local v0, "debug":Z
    :cond_d
    move/from16 v18, v0

    .line 229
    .end local v0    # "debug":Z
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_e
    monitor-exit v3

    .line 230
    const/16 v16, 0x0

    return v16

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 241
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 133
    iget-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 135
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_0

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 140
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 143
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_3

    .line 144
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 145
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    iget-object v8, v8, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v8, p1, :cond_1

    .line 146
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    add-int/lit8 v7, v7, -0x1

    .line 144
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 150
    .end local v7    # "k":I
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 151
    iget-object v7, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v2    # "i":I
    :cond_5
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
