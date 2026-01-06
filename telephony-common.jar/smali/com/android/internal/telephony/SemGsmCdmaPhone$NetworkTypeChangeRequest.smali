.class public Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;
.super Ljava/lang/Object;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NetworkTypeChangeRequest"
.end annotation


# instance fields
.field public blacklist networkTypes:J

.field public blacklist reason:I

.field public blacklist response:Landroid/os/Message;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Message;IJ)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    .line 218
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 219
    iput-wide p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    return-void
.end method
