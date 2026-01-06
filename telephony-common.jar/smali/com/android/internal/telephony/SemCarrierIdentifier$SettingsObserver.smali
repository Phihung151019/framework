.class Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private blacklist mLastActiveState:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mregisterListener(Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->registerListener()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    .line 85
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 82
    iput p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->mLastActiveState:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Handler;Lcom/android/internal/telephony/SemCarrierIdentifier-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist registerListener()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string v1, "phone1_on"

    .line 92
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 91
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    const-string v1, "phone2_on"

    .line 95
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p1}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemCarrierIdentifier;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p1}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "phone1_on"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p1}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "phone2_on"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 111
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->mLastActiveState:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    sget-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->mLastActiveState:I

    return-void
.end method
