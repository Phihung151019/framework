.class public Lcom/samsung/android/game/notification/GameEventNotifier;
.super Ljava/lang/Object;
.source "GameEventNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameEventNotifier"

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static final listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$lZHwmpYE48lcFeGSvN2ss27hXE8(Lcom/samsung/android/game/notification/GameEventNotifier;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/game/notification/GameEventNotifier;->lambda$notifyGameEvent$0(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-direct {v0}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;-><init>()V

    sput-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/game/notification/GameEventNotifier;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private synthetic lambda$notifyGameEvent$0(IILjava/lang/String;)V
    .locals 22
    .param p1, "gameEvent"    # I
    .param p2, "gameUserId"    # I
    .param p3, "gamePackageName"    # Ljava/lang/String;

    .line 90
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "/user"

    sget-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->getListenersForEvent(I)Ljava/util/Set;

    move-result-object v5

    .line 91
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    const-string v6, "GameEventNotifier"

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v18, v5

    goto/16 :goto_5

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyGameEvent(), listeners size="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 99
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v8, :cond_1

    .line 100
    const-string v0, "notifyGameEvent(), pendingIntent is null"

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v0, v8}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->getFilterForListener(Landroid/app/PendingIntent;)Lcom/samsung/android/game/notification/GameEventFilter;

    move-result-object v15

    .line 105
    .local v15, "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    if-nez v15, :cond_2

    .line 106
    const-string v0, "notifyGameEvent(), filter is null"

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "listenerPackage":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v10

    .line 113
    .local v10, "listenerUserId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyGameEvent(), listenerPackage="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", listenerUserId="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", targetEvents="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v15}, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", targetAllUsersEnabled="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v15}, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled()Z

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", targetPackageNames="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v15}, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v15}, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled()Z

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_4

    if-ne v10, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v12

    :goto_2
    move/from16 v16, v0

    .line 121
    .local v16, "userIdMatch":Z
    if-nez v16, :cond_5

    .line 122
    const-string v0, "notifyGameEvent(), user id not match, skip this listener"

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    goto/16 :goto_0

    .line 127
    :cond_5
    invoke-virtual {v15}, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames()Ljava/util/List;

    move-result-object v13

    .line 128
    .local v13, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 129
    invoke-interface {v13, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v11, v12

    :cond_7
    move/from16 v17, v11

    .line 130
    .local v17, "packageMatch":Z
    if-nez v17, :cond_8

    .line 131
    const-string v0, "notifyGameEvent(), package name not match, skip this listener"

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    goto/16 :goto_0

    .line 136
    :cond_8
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v11, "extraData":Landroid/content/Intent;
    const-string v0, "game_event"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v0, "package_name"

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v0, "user_id"

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 140
    move-object/from16 v12, p0

    move-object v14, v9

    .end local v9    # "listenerPackage":Ljava/lang/String;
    .local v14, "listenerPackage":Ljava/lang/String;
    :try_start_1
    iget-object v9, v12, Lcom/samsung/android/game/notification/GameEventNotifier;->context:Landroid/content/Context;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v14

    .end local v14    # "listenerPackage":Ljava/lang/String;
    .local v18, "listenerPackage":Ljava/lang/String;
    :try_start_2
    const-string v14, "android.permission.PACKAGE_USAGE_STATS"
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v19, v10

    .end local v10    # "listenerUserId":I
    .local v19, "listenerUserId":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v20, v13

    .end local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object/from16 v21, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move/from16 v21, v19

    move-object/from16 v19, v7

    move/from16 v7, v21

    .end local v19    # "listenerUserId":I
    .local v5, "listenerPackage":Ljava/lang/String;
    .local v7, "listenerUserId":I
    .local v18, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    :try_start_3
    invoke-virtual/range {v8 .. v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyGameEvent(), sent event="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " of game="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " to listener="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    .end local v11    # "extraData":Landroid/content/Intent;
    goto :goto_4

    .line 145
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v7    # "listenerUserId":I
    .end local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v10    # "listenerUserId":I
    .restart local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "listenerPackage":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v19, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move v7, v10

    move-object/from16 v20, v13

    .end local v10    # "listenerUserId":I
    .end local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "listenerPackage":Ljava/lang/String;
    .restart local v7    # "listenerUserId":I
    .local v18, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v7    # "listenerUserId":I
    .end local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .end local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v10    # "listenerUserId":I
    .restart local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "listenerPackage":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move v7, v10

    move-object/from16 v20, v13

    move-object v5, v14

    .end local v10    # "listenerUserId":I
    .end local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "listenerPackage":Ljava/lang/String;
    .local v5, "listenerPackage":Ljava/lang/String;
    .restart local v7    # "listenerUserId":I
    .restart local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v7    # "listenerUserId":I
    .end local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .end local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v9    # "listenerPackage":Ljava/lang/String;
    .restart local v10    # "listenerUserId":I
    .restart local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object v5, v9

    move v7, v10

    move-object/from16 v20, v13

    .line 146
    .end local v9    # "listenerPackage":Ljava/lang/String;
    .end local v10    # "listenerUserId":I
    .end local v13    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    .local v5, "listenerPackage":Ljava/lang/String;
    .restart local v7    # "listenerUserId":I
    .restart local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    const-string v9, "notifyGameEvent(), PendingIntent was canceled. Unregister listener."

    invoke-static {v6, v9, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    sget-object v9, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v9, v8}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->unregister(Landroid/app/PendingIntent;)V

    .line 149
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v5    # "listenerPackage":Ljava/lang/String;
    .end local v7    # "listenerUserId":I
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    .end local v16    # "userIdMatch":Z
    .end local v17    # "packageMatch":Z
    .end local v20    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v5, v18

    move-object/from16 v7, v19

    goto/16 :goto_0

    .line 150
    .end local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    :cond_9
    return-void

    .line 91
    :cond_a
    move-object/from16 v18, v5

    .line 92
    .end local v5    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    .restart local v18    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyGameEvent(), no listeners for event "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getRegisteredListenersInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "registeredListenersInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v1}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->getAllListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/samsung/android/game/notification/GameEventFilter;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 158
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/game/notification/GameEventFilter;

    .line 159
    .local v4, "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "creatorInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/game/notification/GameEventFilter;->getTargetInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "info":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    .end local v5    # "creatorInfo":Ljava/lang/String;
    .end local v6    # "info":Ljava/lang/String;
    goto :goto_1

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "GameEventNotifier"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v2    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/samsung/android/game/notification/GameEventFilter;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 167
    :cond_0
    return-object v0
.end method

.method public notifyGameEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "gameEvent"    # I
    .param p2, "gamePackageName"    # Ljava/lang/String;
    .param p3, "gameUserId"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGameEvent(), gameEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameEventNotifier"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/game/notification/GameEventNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/samsung/android/game/notification/GameEventNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/game/notification/GameEventNotifier;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 151
    return-void
.end method

.method public registerGameEventListener(Landroid/app/PendingIntent;Ljava/util/List;ZLjava/util/List;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "targetAllUsersEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 36
    .local p2, "targetEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "GameEventNotifier"

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 40
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "pendingIntentCreatorPackage":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerGameEventListener(), pendingIntentCreator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetEvents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetAllUsersEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetPackageNames="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventNotifier;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "packageUsageStatsResult":I
    if-nez v2, :cond_4

    .line 56
    if-eqz p3, :cond_1

    .line 57
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, "interactAcrossUsersResult":I
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 59
    .local v4, "interactAcrossUsersFullResult":I
    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL permission to set targetAllUsersEnabled true."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    .end local v3    # "interactAcrossUsersResult":I
    .end local v4    # "interactAcrossUsersFullResult":I
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 66
    .local v4, "event":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/game/SemGameNotification;->isValidGameEvent(Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    .end local v4    # "event":I
    goto :goto_1

    .line 67
    .restart local v4    # "event":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid game event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    .end local v4    # "event":I
    :cond_3
    new-instance v3, Lcom/samsung/android/game/notification/GameEventFilter;

    invoke-direct {v3, p2, p3, p4}, Lcom/samsung/android/game/notification/GameEventFilter;-><init>(Ljava/util/List;ZLjava/util/List;)V

    .line 72
    .local v3, "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    sget-object v4, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->register(Landroid/app/PendingIntent;Lcom/samsung/android/game/notification/GameEventFilter;)V

    .line 73
    return-void

    .line 54
    .end local v3    # "filter":Lcom/samsung/android/game/notification/GameEventFilter;
    :cond_4
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires PACKAGE_USAGE_STATS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageUsageStatsResult":I
    :cond_5
    const-string v2, "registerGameEventListener(), pendingIntentCreatorPackage is null"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "pendingIntentCreatorPackage is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    .end local v1    # "pendingIntentCreatorPackage":Ljava/lang/String;
    :cond_6
    const-string v1, "registerGameEventListener(), pendingIntent or targetEvents is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pendingIntent or targetEvents is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterGameEventListener(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 76
    const-string v0, "GameEventNotifier"

    if-nez p1, :cond_0

    .line 77
    const-string v1, "unregisterGameEventListener(), pendingIntent is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterGameEventListener(), pendingIntentCreator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/samsung/android/game/notification/GameEventNotifier;->listenerRegistry:Lcom/samsung/android/game/notification/GameEventListenerRegistry;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/notification/GameEventListenerRegistry;->unregister(Landroid/app/PendingIntent;)V

    .line 84
    return-void
.end method
