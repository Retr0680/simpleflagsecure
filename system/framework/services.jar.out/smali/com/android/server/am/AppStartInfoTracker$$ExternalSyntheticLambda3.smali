.class public final synthetic Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroid/util/proto/ProtoOutputStream;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;

.field public final synthetic f$2:Ljava/io/ObjectOutputStream;

.field public final synthetic f$3:Lcom/android/modules/utils/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$0:Landroid/util/proto/ProtoOutputStream;

    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$1:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$2:Ljava/io/ObjectOutputStream;

    iput-object p4, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$3:Lcom/android/modules/utils/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$0:Landroid/util/proto/ProtoOutputStream;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$1:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$2:Ljava/io/ObjectOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;->f$3:Lcom/android/modules/utils/TypedXmlSerializer;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Landroid/util/SparseArray;

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/AppStartInfoTracker;->$r8$lambda$e8bB6slpx0Xgy9r3R5ue8hao6m0(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
