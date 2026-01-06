.class Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideConfig"
.end annotation


# instance fields
.field public final blacklist featureTypes:[I

.field public final blacklist isCarrierService:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist slotId:I

.field public final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IIZ[I)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->slotId:I

    .line 193
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->userId:I

    .line 194
    iput-boolean p4, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->isCarrierService:Z

    .line 195
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypes:[I

    return-void
.end method
