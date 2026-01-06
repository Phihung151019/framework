.class Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;
.super Ljava/lang/Object;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecCarrier"
.end annotation


# static fields
.field static final blacklist CONTENT_UPDATE_URI:Landroid/net/Uri;

.field static final blacklist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 446
    const-string v0, "content://com.samsung.android.sec_carrier.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_URI:Landroid/net/Uri;

    .line 456
    const-string v1, "sim_identity"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method
