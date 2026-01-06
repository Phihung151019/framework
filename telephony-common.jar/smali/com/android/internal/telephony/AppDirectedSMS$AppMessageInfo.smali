.class public Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppMessageInfo"
.end annotation


# instance fields
.field private blacklist mAppDirSmsStatus:I

.field private blacklist mAppPrefix:Ljava/lang/String;

.field private blacklist mComponentname:Landroid/content/ComponentName;

.field private blacklist mParameter:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist checkifcomponentpresent()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAppPrefix()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getappMsgBody()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getappdirsmsstatus()Z
    .locals 2

    .line 47
    iget p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist getcomponentnameDirectedSms()Landroid/content/ComponentName;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setNoRegisteredComponent()V
    .locals 1

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    return-void
.end method

.method public blacklist setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-void
.end method
