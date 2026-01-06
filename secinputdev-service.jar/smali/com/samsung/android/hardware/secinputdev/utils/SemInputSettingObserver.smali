.class public Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;
.super Ljava/lang/Object;
.source "SemInputSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$HandlerMessage;,
        Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;,
        Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;
    }
.end annotation


# static fields
.field private static final HANDLER_GLOBAL_START:I = 0xc8

.field private static final HANDLER_SECURE_START:I = 0x64

.field private static final PALM_MUTE_FRAME_NUMBER:Ljava/lang/String; = "palm_mute_frame_number"

.field private static final PALM_MUTE_THRESHOLD:Ljava/lang/String; = "palm_mute_threshold"

.field private static final PREMIUM_TAP_FOR_WATCH_FACE_SWITCH_ON_OFF:Ljava/lang/String; = "premium_tap_for_watch_face_switch_on_off"

.field public static final STRING_VALUE_KEY:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "SemInputSettingObserver"

.field private static final VIRTUAL_FORCE_EANBLE:Ljava/lang/String; = "virtual_force_enable"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;


# instance fields
.field private availableMap:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

.field private final context:Landroid/content/Context;

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->context:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->availableMap:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->context:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->availableMap:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;->printSettings()V

    .line 58
    return-void
.end method

.method private addObserver(Landroid/os/Handler;ILcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;Ljava/lang/Object;)V
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handlerMessageWhat"    # I
    .param p3, "valueType"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;
    .param p4, "defaultValue"    # Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->availableMap:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "key":Ljava/lang/String;
    const-string v7, "SemInputSettingObserver"

    if-nez v5, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addObserver: Handler message #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'s SETTING_KEY is not defined\nDefined SETTING_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->availableMap:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserverSetup;->printSettings()V

    .line 106
    const-string v0, "addObserver: Please add SETTING_KEY to SemInputSettingObserver\'s constructor"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v8, 0x0

    .line 113
    .local v8, "observer":Landroid/database/ContentObserver;
    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->ordinal()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    packed-switch v0, :pswitch_data_0

    .line 121
    return-void

    .line 118
    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;

    move-object v6, p4

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "handlerMessageWhat":I
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "handlerMessageWhat":I
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;-><init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .end local v8    # "observer":Landroid/database/ContentObserver;
    .local v1, "observer":Landroid/database/ContentObserver;
    move-object v2, p0

    goto :goto_0

    .line 123
    .end local v1    # "observer":Landroid/database/ContentObserver;
    .restart local v8    # "observer":Landroid/database/ContentObserver;
    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_3

    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handlerMessageWhat":I
    .restart local p1    # "handler":Landroid/os/Handler;
    .restart local p2    # "handlerMessageWhat":I
    :catch_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 115
    :pswitch_1
    move-object v3, p1

    move v4, p2

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "handlerMessageWhat":I
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v4    # "handlerMessageWhat":I
    :try_start_3
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;

    move-object p1, p4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, p0

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$SettingObserver;-><init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 116
    .end local v8    # "observer":Landroid/database/ContentObserver;
    .restart local v1    # "observer":Landroid/database/ContentObserver;
    nop

    .line 126
    :goto_0
    nop

    .line 127
    const/16 p1, 0xc8

    const/4 p2, 0x0

    if-le v4, p1, :cond_1

    .line 128
    iget-object p1, v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 129
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 130
    :cond_1
    const/16 p1, 0x64

    const/4 v0, -0x1

    if-le v4, p1, :cond_2

    .line 131
    iget-object p1, v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 132
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 131
    invoke-virtual {p1, v6, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object p1, v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 135
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 134
    invoke-virtual {p1, v6, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    :goto_1
    invoke-virtual {v1, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 138
    iget-object p1, v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void

    .line 123
    .end local v1    # "observer":Landroid/database/ContentObserver;
    .restart local v8    # "observer":Landroid/database/ContentObserver;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    goto :goto_3

    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handlerMessageWhat":I
    .restart local p1    # "handler":Landroid/os/Handler;
    .restart local p2    # "handlerMessageWhat":I
    :catch_4
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object p1, v0

    .line 124
    .end local p2    # "handlerMessageWhat":I
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v4    # "handlerMessageWhat":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_3
    const-string p2, "addObserver"

    invoke-static {v7, p2, p1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;

    return-object v0
.end method


# virtual methods
.method public addObserver(Landroid/os/Handler;II)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handlerMessageWhat"    # I
    .param p3, "defaultValue"    # I

    .line 98
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->INTEGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;ILcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public addObserver(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handlerMessageWhat"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->STRING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;ILcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public registerDefault(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 76
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 78
    const/16 v0, 0xc9

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 79
    const/16 v0, 0xca

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 80
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AWD:Z

    if-eqz v0, :cond_1

    .line 81
    const/16 v0, 0xcb

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 85
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 87
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_PREMIUM_WATCH:Z

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 91
    :cond_2
    return-void
.end method

.method public updateAll()V
    .locals 3

    .line 142
    const-string v0, "SemInputSettingObserver"

    const-string v1, "updateAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 144
    .local v1, "observer":Landroid/database/ContentObserver;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 145
    .end local v1    # "observer":Landroid/database/ContentObserver;
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method
