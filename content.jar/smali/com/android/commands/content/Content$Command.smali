.class abstract Lcom/android/commands/content/Content$Command;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Command"
.end annotation


# instance fields
.field final mUri:Landroid/net/Uri;

.field final mUserId:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    .line 506
    iput p2, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    .line 507
    return-void
.end method

.method public static resolveCallingPackage()Ljava/lang/String;
    .locals 1

    .line 536
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 546
    const/4 v0, 0x0

    return-object v0

    .line 542
    :sswitch_0
    const-string v0, "com.android.shell"

    return-object v0

    .line 538
    :sswitch_1
    const-string v0, "root"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .line 510
    iget-object v0, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "providerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 513
    .local v1, "activityManager":Landroid/app/IActivityManager;
    const/4 v2, 0x0

    .line 514
    .local v2, "provider":Landroid/content/IContentProvider;
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v3, "token":Landroid/os/IBinder;
    :try_start_1
    iget v4, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    const-string v5, "*cmd*"

    invoke-interface {v1, v0, v4, v3, v5}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 518
    .local v4, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v4, :cond_1

    .line 521
    iget-object v5, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object v2, v5

    .line 522
    invoke-virtual {p0, v2}, Lcom/android/commands/content/Content$Command;->onExecute(Landroid/content/IContentProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v4    # "holder":Landroid/app/ContentProviderHolder;
    if-eqz v2, :cond_0

    .line 525
    :try_start_2
    iget v4, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    invoke-interface {v1, v0, v3, v4}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 532
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_0
    goto :goto_0

    .line 519
    .restart local v1    # "activityManager":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "holder":Landroid/app/ContentProviderHolder;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "providerName":Ljava/lang/String;
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v3    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/commands/content/Content$Command;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    .end local v4    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v0    # "providerName":Ljava/lang/String;
    .restart local v1    # "activityManager":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/commands/content/Content$Command;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 525
    :try_start_4
    iget v5, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    invoke-interface {v1, v0, v3, v5}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 528
    :cond_2
    nop

    .end local v0    # "providerName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/commands/content/Content$Command;
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 529
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v3    # "token":Landroid/os/IBinder;
    .restart local v0    # "providerName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/commands/content/Content$Command;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while accessing provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected abstract onExecute(Landroid/content/IContentProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
