.class public final enum Lcom/android/internal/telephony/AppDirectedSMS;
.super Ljava/lang/Enum;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;,
        Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/AppDirectedSMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

.field public static final enum blacklist INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;


# instance fields
.field private blacklist mcontext:Landroid/content/Context;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    filled-new-array {v0}, [Lcom/android/internal/telephony/AppDirectedSMS;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/android/internal/telephony/AppDirectedSMS;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/AppDirectedSMS;->$values()[Lcom/android/internal/telephony/AppDirectedSMS;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    .locals 9

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "//VZW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 208
    const-string v4, "AppDirectedSMS"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_3

    .line 212
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;-><init>(Lcom/android/internal/telephony/AppDirectedSMS-IA;)V

    .line 213
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 216
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 217
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 221
    :cond_2
    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 223
    :try_start_0
    invoke-virtual {v1, v7, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 224
    invoke-direct {p0, v8, p1, v7, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 226
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 227
    const-string v8, "findAppDirectedSMSPackage| ReceiverInfo NameNotFoundException"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1
    :try_start_1
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 232
    invoke-direct {p0, v3, p1, v7, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 234
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 235
    const-string v3, "findAppDirectedSMSPackage| ApplicationInfo NameNotFoundException"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v5

    .line 209
    :cond_4
    :goto_3
    const-string p0, "findAppDirectedSMSPackage| queryResult is null or size is zero"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private blacklist findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 14

    .line 137
    const-string v0, "  [receiver]="

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    const-string v2, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 147
    const-string v4, "AppDirectedSMS"

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object v6, v5

    .line 152
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 153
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 154
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 155
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v9, 0x80

    .line 160
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-virtual {v2, v10, v9}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 163
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findAppDirectedSMSPackageWithPrefix| package is found from receiver!!![package]="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v10

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v10

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v13, v10

    move-object v10, v6

    move-object v6, v13

    .line 169
    :goto_2
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 170
    const-string v6, "findAppDirectedSMSPackageWithPrefix| ReceiverInfo NameNotFoundException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :goto_3
    :try_start_2
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 175
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findAppDirectedSMSPackageWithPrefix| package is found from application !!! [package]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v6

    :catch_2
    move-exception v7

    .line 181
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 182
    const-string v7, "findAppDirectedSMSPackageWithPrefix| ApplicationInfo NameNotFoundException"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v5

    .line 148
    :cond_5
    :goto_5
    const-string p0, "queryResult is null or size is zero"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private blacklist isPackageVzwSmsAuthorized(Ljava/lang/String;)Z
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPackageVzwSmsAuthorized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDirectedSMS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    const-string v0, "VZWSMS"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->isPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isVzwPermissionGranted(Ljava/lang/String;)Z
    .locals 4

    .line 242
    const-string v0, "AppDirectedSMS"

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 247
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v2

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->isPackageVzwSmsAuthorized(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 265
    :cond_1
    const-string p0, "isVzwPermissionGranted returning false"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 252
    const-string p0, "isVzwPermissionGranted calling package NameNotFoundException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 310
    :cond_0
    const-string p0, "com.verizon.directedAppSMS"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    const-string p0, "//VZW"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 132
    const-string p0, "AppDirectedSMS"

    const-string p1, "setBestMatchResult| no component"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 113
    const-string p0, "AppDirectedSMS"

    const-string p1, "setResult| no component"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 285
    const-string p0, "com.verizon.directedAppSMS"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 287
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-object p2, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 294
    :cond_1
    iput-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    .line 295
    iput-object p3, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    .line 296
    iput-object p0, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startsWithMetaData| match found [componentName]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [parameter]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [appPrefix]="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDirectedSMS"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AppDirectedSMS;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/AppDirectedSMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method


# virtual methods
.method public blacklist checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 2

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    .line 89
    new-instance p1, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    invoke-direct {p1}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;-><init>()V

    .line 90
    const-string v0, "//F1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AppDirectedSMS"

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "checkIfAppDirSMS| BUA Message"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "BUA-ADS"

    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V

    return-object p1

    .line 95
    :cond_0
    const-string v0, "checkIfAppDirSMS| Not BUA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V

    return-object p1
.end method
