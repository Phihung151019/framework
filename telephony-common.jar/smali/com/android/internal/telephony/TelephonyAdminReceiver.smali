.class public Lcom/android/internal/telephony/TelephonyAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyAdminReceiver.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisallow2gByAutoBlock:Z

.field private blacklist mDisallowCellular2gRestriction:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisallowCellular2gRestriction(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misDisallow2gByAutoBlock(Lcom/android/internal/telephony/TelephonyAdminReceiver;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->isDisallow2gByAutoBlock()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->ensureUserManagerExists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_cellular_2g"

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 54
    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->isDisallow2gByAutoBlock()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    .line 61
    new-instance p2, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v1}, Lcom/android/internal/telephony/TelephonyAdminReceiver$1;-><init>(Lcom/android/internal/telephony/TelephonyAdminReceiver;Landroid/os/Handler;)V

    .line 83
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "rampart_blocked_2g_network"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init registerContentObserver failed. exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyAdminReceiver"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist ensureUserManagerExists()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string v1, "TelephonyAdminReceiver"

    if-nez v0, :cond_0

    .line 146
    const-string v0, "No user manager. Attempting to resolve one."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    if-nez p0, :cond_1

    .line 150
    const-string p0, "Could not get a user manager instance. All operations will be no-ops until one is resolved"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isDisallow2gByAutoBlock()Z
    .locals 3

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "rampart_blocked_2g_network"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisallow2gByAutoBlock exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyAdminReceiver"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public blacklist isCellular2gDisabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 93
    const-string v0, "Processing onReceive"

    const-string v1, "TelephonyAdminReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring unexpected action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->ensureUserManagerExists()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string p2, "no_cellular_2g"

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    .line 105
    iget-boolean p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    if-eq p1, p2, :cond_3

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating allowed network types with new admin 2g restriction. no_cellular_2g: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DisallowCellular2gRestriction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", DisallowByAutoBlock: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "disallow_2g"

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isAllowedNetworkTypesLoadedFromDb()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallow2gByAutoBlock:Z

    if-nez p1, :cond_4

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    return-void

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping update of allowed network types. Restriction no_cellular_2g unchanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
