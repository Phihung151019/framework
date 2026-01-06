.class public Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;
.super Ljava/lang/Object;
.source "ContentCaptureSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api29Impl;,
        Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api34Impl;,
        Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final KEY_VIEW_TREE_APPEARED:Ljava/lang/String; = "TREAT_AS_VIEW_TREE_APPEARED"

.field private static final KEY_VIEW_TREE_APPEARING:Ljava/lang/String; = "TREAT_AS_VIEW_TREE_APPEARING"


# instance fields
.field private final mView:Landroid/view/View;

.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V
    .locals 0
    .param p1, "contentCaptureSession"    # Landroid/view/contentcapture/ContentCaptureSession;
    .param p2, "host"    # Landroid/view/View;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    .line 89
    return-void
.end method

.method public static toContentCaptureSessionCompat(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;
    .locals 1
    .param p0, "contentCaptureSession"    # Landroid/view/contentcapture/ContentCaptureSession;
    .param p1, "host"    # Landroid/view/View;

    .line 61
    new-instance v0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public newAutofillId(J)Landroid/view/autofill/AutofillId;
    .locals 2
    .param p1, "virtualChildId"    # J

    .line 106
    nop

    .line 107
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v1, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    .line 109
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getAutofillId(Landroid/view/View;)Landroidx/core/view/autofill/AutofillIdCompat;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/autofill/AutofillIdCompat;

    invoke-virtual {v1}, Landroidx/core/view/autofill/AutofillIdCompat;->toAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 107
    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api29Impl;->newAutofillId(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroidx/core/view/ViewStructureCompat;
    .locals 1
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J

    .line 133
    nop

    .line 134
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    .line 135
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api29Impl;->newVirtualViewStructure(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroidx/core/view/ViewStructureCompat;->toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/core/view/ViewStructureCompat;

    move-result-object v0

    return-object v0
.end method

.method public notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 231
    nop

    .line 232
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-static {v0, p1, p2}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api29Impl;->notifyViewTextChanged(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public notifyViewsAppeared(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/ViewStructure;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "appearedNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewStructure;>;"
    nop

    .line 159
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-static {v0, p1}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api34Impl;->notifyViewsAppeared(Landroid/view/contentcapture/ContentCaptureSession;Ljava/util/List;)V

    .line 176
    return-void
.end method

.method public notifyViewsDisappeared([J)V
    .locals 2
    .param p1, "virtualIds"    # [J

    .line 195
    nop

    .line 196
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v1, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    .line 198
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getAutofillId(Landroid/view/View;)Landroidx/core/view/autofill/AutofillIdCompat;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/autofill/AutofillIdCompat;

    invoke-virtual {v1}, Landroidx/core/view/autofill/AutofillIdCompat;->toAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 196
    invoke-static {v0, v1, p1}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api29Impl;->notifyViewsDisappeared(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;[J)V

    .line 216
    return-void
.end method

.method public toContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v0, Landroid/view/contentcapture/ContentCaptureSession;

    return-object v0
.end method
