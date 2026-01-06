.class abstract Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/AttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttestationRunnable"
.end annotation


# instance fields
.field public greylist callingUid:I

.field public greylist nonce:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->nonce:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    return-void
.end method
