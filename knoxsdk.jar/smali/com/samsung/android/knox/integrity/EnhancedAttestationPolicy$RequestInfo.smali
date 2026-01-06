.class public Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field public greylist mAuk:Ljava/lang/String;

.field public greylist mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

.field public greylist mNonce:Ljava/lang/String;

.field public greylist mOnPrem:Z


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    iput-boolean p4, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    return-void
.end method
