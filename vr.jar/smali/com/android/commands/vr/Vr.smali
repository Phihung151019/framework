.class public final Lcom/android/commands/vr/Vr;
.super Lcom/android/internal/os/BaseCommand;
.source "Vr.java"


# static fields
.field private static final COMMAND_ENABLE_VD:Ljava/lang/String; = "enable-virtual-display"

.field private static final COMMAND_SET_PERSISTENT_VR_MODE_ENABLED:Ljava/lang/String; = "set-persistent-vr-mode-enabled"

.field private static final COMMAND_SET_VR2D_DISPLAY_PROPERTIES:Ljava/lang/String; = "set-display-props"


# instance fields
.field private mVrService:Landroid/service/vr/IVrManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/android/commands/vr/Vr;

    invoke-direct {v0}, Lcom/android/commands/vr/Vr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/vr/Vr;->run([Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private runEnableVd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/app/Vr2dDisplayProperties$Builder;

    invoke-direct {v0}, Landroid/app/Vr2dDisplayProperties$Builder;-><init>()V

    .line 105
    .local v0, "builder":Landroid/app/Vr2dDisplayProperties$Builder;
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "value":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Vr2dDisplayProperties$Builder;->setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;

    goto :goto_0

    .line 108
    :cond_0
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Vr2dDisplayProperties$Builder;->setEnabled(Z)Landroid/app/Vr2dDisplayProperties$Builder;

    .line 113
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/vr/Vr;->mVrService:Landroid/service/vr/IVrManager;

    invoke-virtual {v0}, Landroid/app/Vr2dDisplayProperties$Builder;->build()Landroid/app/Vr2dDisplayProperties;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Can\'t enable ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") virtual display"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private runSetPersistentVrModeEnabled()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "enableStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 123
    .local v1, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/vr/Vr;->mVrService:Landroid/service/vr/IVrManager;

    invoke-interface {v2, v1}, Landroid/service/vr/IVrManager;->setPersistentVrModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Can\'t set persistent mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private runSetVr2dDisplayProperties()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "widthStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "heightStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "dpiStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 92
    .local v5, "dpi":I
    new-instance v6, Landroid/app/Vr2dDisplayProperties;

    invoke-direct {v6, v1, v3, v5}, Landroid/app/Vr2dDisplayProperties;-><init>(III)V

    .line 96
    .local v6, "vr2dDisplayProperties":Landroid/app/Vr2dDisplayProperties;
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/vr/Vr;->mVrService:Landroid/service/vr/IVrManager;

    invoke-interface {v7, v6}, Landroid/service/vr/IVrManager;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v7

    .line 98
    .local v7, "re":Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Can\'t set persistent mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .end local v7    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/vr/Vr;->mVrService:Landroid/service/vr/IVrManager;

    .line 61
    iget-object v0, p0, Lcom/android/commands/vr/Vr;->mVrService:Landroid/service/vr/IVrManager;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "Error: Could not access the Vr Manager. Is the system running?"

    invoke-virtual {p0, v0}, Lcom/android/commands/vr/Vr;->showError(Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/vr/Vr;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "set-persistent-vr-mode-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "set-display-props"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "enable-virtual-display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/vr/Vr;->runEnableVd()V

    .line 76
    goto :goto_2

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/vr/Vr;->runSetPersistentVrModeEnabled()V

    .line 73
    goto :goto_2

    .line 69
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/vr/Vr;->runSetVr2dDisplayProperties()V

    .line 70
    nop

    .line 80
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb5f604a -> :sswitch_2
        -0x6a64986 -> :sswitch_1
        0x79a3459d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 50
    const-string v0, "usage: vr [subcommand]\nusage: vr set-persistent-vr-mode-enabled [true|false]\nusage: vr set-display-props [width] [height] [dpi]\nusage: vr enable-virtual-display [true|false]\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    return-void
.end method
