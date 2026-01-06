.class public abstract Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
    }
.end annotation


# static fields
.field public static final greylist TAG:Ljava/lang/String; = "EAPolicyCb"


# instance fields
.field public greylist acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    return-void
.end method


# virtual methods
.method public final greylist getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V

    iput-object p1, v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
.end method
