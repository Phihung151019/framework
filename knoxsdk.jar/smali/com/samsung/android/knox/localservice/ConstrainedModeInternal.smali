.class public abstract Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist checkConstrainedState()Z
.end method

.method public abstract blacklist cleanUpConstrainedState(I)V
.end method

.method public abstract blacklist disableConstrainedState(I)Z
.end method

.method public abstract blacklist dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract blacklist getConstrainedState()I
.end method

.method public abstract blacklist isRestrictedByConstrainedState(I)Z
.end method
