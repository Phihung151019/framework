.class public Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;
.super Ljava/lang/Object;
.source "UwbFactoryIntentManager.java"


# static fields
.field private static final ACTION_UWB_TEST_REQUEST:Ljava/lang/String; = "com.samsung.android.uwb.test.action.REQUEST"

.field private static final ACTION_UWB_TEST_RESPONSE:Ljava/lang/String; = "com.samsung.android.uwb.test.action.RESPONSE"

.field public static final BOUND_LOCKED:Ljava/lang/String; = "BL"

.field public static final BOUND_UNLOCKED:Ljava/lang/String; = "BU"

.field public static final DATA_NG:Ljava/lang/String; = "NG"

.field public static final DATA_NONE:Ljava/lang/String; = "NONE"

.field public static final DATA_OK:Ljava/lang/String; = "OK"

.field private static final EXTRA_DATA_INTEGER:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.DATA_INTEGER"

.field private static final EXTRA_DATA_SENDER:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.DATA_SENDER"

.field private static final EXTRA_DATA_STRING:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.DATA_STRING"

.field private static final EXTRA_ID:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.ID"

.field private static final EXTRA_LOOPBACK_COUNT:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.LOOPBACK_COUNT"

.field private static final EXTRA_LOOPBACK_INTERVAL:Ljava/lang/String; = "com.samsung.android.uwb.test.extra.LOOPBACK_INTERVAL"

.field private static final FACTORY_AT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.facatfunction"

.field public static final FACTORY_CMD_SEPARATOR:Ljava/lang/String; = "_"

.field private static final FACTORY_PACKAGE_NAME:Ljava/lang/String; = "com.sec.factory"

.field private static final FACTORY_UI_PACKAGE_NAME:Ljava/lang/String; = "com.sec.facuifunction"

.field public static final NG_BIND:Ljava/lang/String; = "NG_BIND"

.field public static final NG_COUNT:Ljava/lang/String; = "NG_COUNT"

.field public static final NOT_BOUND:Ljava/lang/String; = "NB"

.field public static final NO_CAL:Ljava/lang/String; = "NO_CAL"

.field public static final POWER_INDEX_START:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "UN"

.field private static final UWBTEST_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.uwbtest"

.field private static final UWB_SYSTEM_PROTECTION:Ljava/lang/String; = "com.samsung.permission.UWB_SYSTEM_PROTECTION"


# instance fields
.field private mBroadcastSender:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSentResult:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIUwbFactoryManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;)Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mIUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBroadcastSender(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mBroadcastSender:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uwbFactoryManager"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mBroadcastSender:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mIUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.uwb.test.action.REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 74
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "com.samsung.permission.UWB_SYSTEM_PROTECTION"

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 75
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void
.end method

.method public sendResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "sData"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(ILjava/lang/String;[I)V

    .line 143
    return-void
.end method

.method public sendResponse(ILjava/lang/String;[I)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "sData"    # Ljava/lang/String;
    .param p3, "iData"    # [I

    .line 114
    sget-object v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.uwb.test.action.RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.uwb.test.extra.ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    const-string v1, "com.samsung.android.uwb.test.extra.DATA_STRING"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_1
    if-eqz p3, :cond_2

    .line 122
    const-string v1, "com.samsung.android.uwb.test.extra.DATA_INTEGER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 125
    :cond_2
    const-string v1, "com.sec.facatfunction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.UWB_SYSTEM_PROTECTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 128
    const-string v1, "com.sec.facuifunction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    const-string v1, "com.sec.android.app.uwbtest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mBroadcastSender:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mBroadcastSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->mBroadcastSender:Ljava/lang/String;

    .line 139
    :cond_3
    return-void
.end method

.method public sendResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "sData"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(ILjava/lang/String;[I)V

    .line 147
    return-void
.end method
